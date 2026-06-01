Oregon Hospital Readmission Analysis

Executive Summary

Hospital readmissions are a critical healthcare quality metric and a significant financial concern for hospitals participating in the CMS Hospital Readmissions Reduction Program (HRRP). Hospitals with excess readmissions may face reduced Medicare reimbursements, making readmission performance an important operational and financial indicator.

This project analyzes FY 2026 CMS HRRP data for Oregon hospitals to identify facilities, clinical conditions, and geographic regions associated with elevated readmission risk.

The analysis found that while Oregon hospitals collectively performed better than the CMS benchmark (Average ERR = 0.963), several hospitals exceeded expected readmission levels. Lower-rated hospitals generally exhibited higher readmission ratios than higher-rated hospitals, suggesting a potential relationship between overall quality performance and readmission outcomes.

---

Business Problem

Healthcare leaders need to identify where readmission performance is underperforming in order to:

- Reduce avoidable patient readmissions
- Improve quality of care
- Reduce potential CMS reimbursement penalties
- Prioritize quality improvement initiatives
- Allocate resources effectively

Key Questions

1. Which Oregon hospitals demonstrate the highest readmission risk?
2. Which clinical conditions contribute most to readmission performance?
3. Is there a relationship between CMS ratings and readmission outcomes?
4. Which counties should be prioritized for performance review?

---

Tools Used

- SQL
- Power BI
- Excel
- CMS Hospital Compare Data

---

Data Sources

CMS Hospital Readmissions Reduction Program (HRRP)

Provides Excess Readmission Ratio (ERR) measures for:

- Heart Attack (AMI)
- Heart Failure
- Pneumonia
- COPD
- Hip/Knee Replacement
- CABG

CMS Hospital General Information

Provides:

- Hospital characteristics
- Hospital ownership
- CMS Overall Rating
- Geographic information

---

Data Preparation

Data cleaning and validation included:

- Filtering to Oregon hospitals only
- Converting ERR values to numeric format
- Handling missing CMS ratings
- Validating hospital matching across datasets
- Aggregating hospital-level performance metrics

Final Analysis Dataset

Metric| Value
Hospitals with HRRP Data| 32
Average ERR| 0.963
Worse-than-Expected Conditions| 30
Average CMS Rating| 3.31

---

Dashboard Overview

Executive Overview

The dashboard includes:

- KPI performance summary
- Top 10 hospitals by Average ERR
- Average ERR by condition
- Average ERR by CMS rating
- County-level performance comparison
- Executive insights panel

Hospital Details

The dashboard includes:

- Hospital performance table
- County comparisons
- CMS rating comparisons
- Readmission risk indicators

---

Key Findings

Oregon Hospitals Performed Better Than the CMS Benchmark

The statewide average Excess Readmission Ratio was:

0.963

Since ERR values below 1.00 indicate better-than-expected performance, Oregon hospitals collectively performed better than the CMS benchmark.

Five Hospitals Exceeded the CMS Benchmark

Highest average readmission ratios:

Hospital| Avg ERR
Legacy Meridian Park Medical Center| 1.032
Providence Medford Medical Center| 1.032
Providence Willamette Falls Medical Center| 1.024
Bay Area Hospital| 1.013
Legacy Silverton Medical Center| 1.004

Hip/Knee Replacement Reported the Highest Average ERR

Condition| Avg ERR
Hip/Knee Replacement| 0.990
COPD| 0.976
Pneumonia| 0.961
Heart Failure| 0.950
Heart Attack| 0.946
CABG| 0.932

Lower-Rated Hospitals Demonstrated Higher Readmission Ratios

CMS Rating| Avg ERR
2-Star| 0.999
3-Star| 0.962
4-Star| 0.941

This suggests a potential relationship between overall hospital quality performance and readmission outcomes.

County-Level Performance Differences Exist

Counties with the highest average readmission ratios included:

- Coos County
- Washington County
- Jackson County

---

Business Recommendations

Priority 1: Focus on High-Risk Hospitals

Conduct detailed readmission reviews at:

- Legacy Meridian Park Medical Center
- Providence Medford Medical Center
- Bay Area Hospital
- Providence Willamette Falls Medical Center

Priority 2: Improve High-Risk Clinical Pathways

Review processes associated with:

- Hip/Knee Replacement
- COPD
- Pneumonia

Potential interventions include:

- Enhanced discharge education
- Improved rehabilitation coordination
- Increased post-discharge monitoring

Priority 3: Use CMS Ratings as an Early Warning Indicator

Because lower-rated hospitals demonstrated higher average ERR values, CMS ratings may help identify facilities requiring additional quality improvement support.

---

Limitations

- Analysis includes only hospitals with reportable HRRP measures.
- County-level results should be interpreted cautiously due to small sample sizes.
- Observed relationships do not establish causation.
- CMS ratings represent broader quality measures and are not solely determined by readmission performance.

---

Conclusion

This project demonstrates how SQL and Power BI can be used to transform public healthcare data into actionable business insights.

The analysis identifies high-risk hospitals, conditions, and geographic regions that healthcare leaders can target to reduce avoidable readmissions, improve patient outcomes, and potentially reduce CMS reimbursement penalties.# oregon-hospital-readmission-analysis