/*
Project: Oregon Hospital Readmission Analysis
Tools: MySQL + Power BI
Data Source: CMS Hospital Readmissions Reduction Program (FY 2026)

Purpose:
This SQL script creates the main analytical outputs used in the Power BI dashboard.
The analysis identifies Oregon hospitals, conditions, counties, and CMS rating groups
associated with elevated readmission risk.

Key Metric:
Excess Readmission Ratio (ERR)
- ERR > 1.00 = worse than expected
- ERR < 1.00 = better than expected
*/

-- Data validation: Oregon hospital counts
SELECT
    COUNT(DISTINCT facility_id) AS oregon_hospitals_with_hrrp_data
FROM vw_readmissions_clean;

-- Data validation: total worse-than-expected measures
SELECT
    SUM(CASE WHEN excess_readmission_ratio > 1 THEN 1 ELSE 0 END) AS total_worse_than_expected_measures
FROM vw_readmissions_clean;

-- Data validation: average statewide ERR
SELECT
    AVG(excess_readmission_ratio) AS statewide_avg_err
FROM vw_readmissions_clean;




-- 1. Which Oregon hospitals have the highest average readmission risk?
-- Top hospitals by average readmission ratio
SELECT
    r.facility_id,
    r.facility_name,
    g.city,
    g.county,
    g.hospital_overall_rating,

    COUNT(r.condition_name) AS reported_conditions,
    AVG(r.excess_readmission_ratio) AS avg_readmission_ratio,

    SUM(CASE WHEN r.excess_readmission_ratio > 1 THEN 1 ELSE 0 END) AS worse_than_expected_conditions,
    SUM(CASE WHEN r.excess_readmission_ratio < 1 THEN 1 ELSE 0 END) AS better_than_expected_conditions

FROM vw_readmissions_clean r
LEFT JOIN vw_general_info_clean g
    ON r.facility_id = g.facility_id

GROUP BY
    r.facility_id,
    r.facility_name,
    g.city,
    g.county,
    g.hospital_overall_rating

ORDER BY avg_readmission_ratio DESC;


-- 2. Which readmission conditions have the highest average risk across Oregon hospitals?
-- Readmission Risk by condition
-- Condition summary
SELECT
    condition_name,
    COUNT(DISTINCT facility_id) AS hospitals_reporting,
    AVG(excess_readmission_ratio) AS avg_readmission_ratio,
    SUM(CASE WHEN excess_readmission_ratio > 1 THEN 1 ELSE 0 END) AS worse_than_expected_measures,
    SUM(CASE WHEN excess_readmission_ratio < 1 THEN 1 ELSE 0 END) AS better_than_expected_measures
FROM vw_readmissions_clean
GROUP BY condition_name
ORDER BY avg_readmission_ratio DESC;

-- 3. Which hospitals have repeated readmission risk across multiple conditions?
-- Hospitals with multiple worse-than-expected conditions
SELECT
    r.facility_id,
    r.facility_name,
    g.city,
    g.county,
    g.hospital_overall_rating,

    COUNT(r.condition_name) AS reported_conditions,

    SUM(CASE WHEN r.excess_readmission_ratio > 1 THEN 1 ELSE 0 END) AS worse_than_expected_conditions,

    AVG(r.excess_readmission_ratio) AS avg_readmission_ratio

FROM vw_readmissions_clean r
LEFT JOIN vw_general_info_clean g
    ON r.facility_id = g.facility_id

GROUP BY
    r.facility_id,
    r.facility_name,
    g.city,
    g.county,
    g.hospital_overall_rating

HAVING worse_than_expected_conditions >= 2

ORDER BY worse_than_expected_conditions DESC, avg_readmission_ratio DESC;

-- 4. Readmission Risk by hospital rating
-- Compare readmission performance by hospital rating
-- Now we test whether readmission risk differs by CMS hospital rating. This helps answer:
-- Do lower-rated hospitals appear to have higher readmission risk?

SELECT
    g.hospital_overall_rating,
    COUNT(DISTINCT r.facility_id) AS hospital_count,
    AVG(r.excess_readmission_ratio) AS avg_readmission_ratio,
    SUM(CASE WHEN r.excess_readmission_ratio > 1 THEN 1 ELSE 0 END) AS worse_than_expected_measures
FROM vw_readmissions_clean r
LEFT JOIN vw_general_info_clean g
    ON r.facility_id = g.facility_id
WHERE g.hospital_overall_rating IS NOT NULL
GROUP BY g.hospital_overall_rating
ORDER BY g.hospital_overall_rating;


-- 5. Readmission risk by ownership type
-- Does readmission performance vary by hospital ownership type?
-- This groups hospitals by ownership type and compares their average readmission risk.
-- This gives you another business segmentation for your dashboard.
SELECT
    g.hospital_ownership,
    COUNT(DISTINCT r.facility_id) AS hospital_count,
    AVG(r.excess_readmission_ratio) AS avg_readmission_ratio,
    SUM(CASE WHEN r.excess_readmission_ratio > 1 THEN 1 ELSE 0 END) AS worse_than_expected_measures
FROM vw_readmissions_clean r
LEFT JOIN vw_general_info_clean g
    ON r.facility_id = g.facility_id
WHERE g.hospital_ownership IS NOT NULL
GROUP BY g.hospital_ownership
ORDER BY avg_readmission_ratio DESC;

-- 6. Readmission risk by county
-- Which Oregon counties have higher average readmission risk among matched hospitals?
-- Coos County has the highest average readmission ratio
-- County summary

SELECT
    g.county,
    COUNT(DISTINCT r.facility_id) AS hospital_count,
    AVG(r.excess_readmission_ratio) AS avg_readmission_ratio,
    SUM(CASE WHEN r.excess_readmission_ratio > 1 THEN 1 ELSE 0 END) AS worse_than_expected_measures
FROM vw_readmissions_clean r
LEFT JOIN vw_general_info_clean g
    ON r.facility_id = g.facility_id
WHERE g.county IS NOT NULL
GROUP BY g.county
ORDER BY avg_readmission_ratio DESC;