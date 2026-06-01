# Oregon Hospital Readmission Analysis

## Executive Summary

Hospital readmissions are a key healthcare quality metric and a significant financial concern for hospitals participating in the Centers for Medicare & Medicaid Services (CMS) Hospital Readmissions Reduction Program (HRRP). Hospitals with excess readmissions may face reduced Medicare reimbursements, making readmission performance an important operational and financial indicator.

This project analyzes FY 2026 CMS HRRP data for Oregon hospitals to identify facilities, clinical conditions, and geographic regions associated with elevated readmission risk.

The analysis found that Oregon hospitals collectively performed better than the CMS benchmark (Average ERR = 0.963), although several facilities exceeded expected readmission levels. Lower-rated hospitals generally exhibited higher readmission ratios than higher-rated hospitals, suggesting a potential relationship between overall quality performance and readmission outcomes.

---

# Business Problem

Healthcare leaders need to understand where readmission performance is underperforming in order to:

- Reduce avoidable patient readmissions
- Improve quality of care
- Reduce potential CMS reimbursement penalties
- Prioritize quality improvement initiatives
- Allocate resources effectively

### Key Questions

1. Which Oregon hospitals demonstrate the highest readmission risk?
2. Which clinical conditions contribute most to readmission performance?
3. Is there a relationship between CMS ratings and readmission outcomes?
4. Which counties should be prioritized for performance review?

---

# Dashboard Preview

![Executive Overview](dashboard/executive_overview.png)

![Hospital Details](dashboard/hospital_details.png)

---

# Project Architecture

## Tools Used

- SQL
- Power BI
- Excel
- CMS Public Healthcare Data

## Data Sources

### CMS Hospital Readmissions Reduction Program (HRRP)

Provides Excess Readmission Ratio (ERR) measures for:

- Heart Attack (AMI)
- Heart Failure
- Pneumonia
- COPD
- Hip/Knee Replacement
- CABG

### CMS Hospital General Information

Provides:

- Hospital characteristics
- CMS Overall Rating
- Hospital ownership
- Geographic information

---

# Data Preparation

The following steps were performed:

- Filtered data to Oregon hospitals
- Converted ERR values to numeric format
- Handled missing CMS rating values
- Validated hospital matching across datasets
- Created aggregated summary tables
- Built hospital-level KPIs

### Final Analysis Dataset

| Metric | Value |
|----------|----------:|
| Hospitals with HRRP Data | 32 |
| Average ERR | 0.963 |
| Worse-than-Expected Conditions | 30 |
| Average CMS Rating | 3.31 |

---

# Dashboard Overview

## Executive Overview

The dashboard provides a high-level view of readmission performance across Oregon hospitals.

### KPIs

- Hospitals with HRRP Data
- Average ERR
- Worse-than-Expected Conditions
- Average CMS Rating

### Visualizations

- Top 10 Hospitals by Average ERR
- Average ERR by Condition
- Average ERR by CMS Rating
- Key Insights Panel

---

## Hospital Details

The second dashboard page provides hospital-level analysis.

### Visualizations

- Hospital Performance Table
- Average ERR by County
- Average ERR by CMS Rating
- Detailed Hospital Performance Metrics

---

# Key Findings

## Oregon Hospitals Performed Better Than Expected Overall

The statewide average Excess Readmission Ratio was:

**0.963**

Since values below 1.00 indicate better-than-expected performance, Oregon hospitals collectively performed better than the CMS benchmark.

### Business Impact

Statewide performance appears favorable; however, individual facilities continue to demonstrate elevated readmission risk that may require targeted intervention.

---

## Five Hospitals Exceeded the CMS Benchmark

Highest average readmission ratios:

| Hospital | Avg ERR |
|----------|----------:|
| Legacy Meridian Park Medical Center | 1.032 |
| Providence Medford Medical Center | 1.032 |
| Providence Willamette Falls Medical Center | 1.024 |
| Bay Area Hospital | 1.013 |
| Legacy Silverton Medical Center | 1.004 |

### Business Impact

These hospitals should be prioritized for quality improvement review because they exceed expected readmission performance levels and may face increased financial exposure under CMS reimbursement programs.

---

## Hip/Knee Replacement Reported the Highest Average ERR

| Condition | Avg ERR |
|----------|----------:|
| Hip/Knee Replacement | 0.990 |
| COPD | 0.976 |
| Pneumonia | 0.961 |
| Heart Failure | 0.950 |
| Heart Attack | 0.946 |
| CABG | 0.932 |

### Business Impact

Orthopedic discharge planning, rehabilitation coordination, and post-discharge monitoring may represent opportunities for reducing avoidable readmissions.

---

## Lower-Rated Hospitals Demonstrated Higher Readmission Ratios

| CMS Rating | Avg ERR |
|----------|----------:|
| 2-Star | 0.999 |
| 3-Star | 0.962 |
| 4-Star | 0.941 |

### Business Impact

Hospitals with lower CMS ratings generally exhibited higher readmission ratios than higher-rated hospitals.

While this analysis does not establish causation, the results suggest that broader quality performance indicators may be associated with readmission outcomes.

---

## County-Level Performance Differences Exist

Highest county-level average readmission ratios:

| County | Avg ERR |
|----------|----------:|
| Coos | 1.013 |
| Washington | 0.990 |
| Jackson | 0.957 |
| Multnomah | 0.963 |

### Business Impact

County-level differences may help healthcare organizations identify regions requiring additional quality improvement resources or operational review.

---

# Strategic Recommendations

## Priority 1: Focus on High-Risk Hospitals

Conduct detailed readmission reviews at:

- Legacy Meridian Park Medical Center
- Providence Medford Medical Center
- Bay Area Hospital
- Providence Willamette Falls Medical Center

Potential focus areas:

- Discharge planning
- Care transition management
- Follow-up appointment compliance
- Patient education

---

## Priority 2: Improve High-Risk Clinical Pathways

Review processes associated with:

- Hip/Knee Replacement
- COPD
- Pneumonia

Potential interventions:

- Enhanced discharge education
- Improved rehabilitation coordination
- Increased post-discharge monitoring
- Follow-up care optimization

---

## Priority 3: Use CMS Ratings as an Early Warning Indicator

Because lower-rated hospitals demonstrated higher average ERR values, organizations may use CMS ratings as one indicator when prioritizing quality improvement initiatives.

---

# Limitations

- Analysis includes only hospitals with reportable HRRP measures.
- County-level results should be interpreted cautiously because some counties contain a limited number of reporting hospitals.
- Observed relationships do not establish causation.
- CMS ratings represent a broader quality framework and are not solely determined by readmission performance.

---

# Skills Demonstrated

### SQL

- Data cleaning
- Aggregation
- KPI development
- Data validation
- Summary table creation

### Power BI

- Dashboard design
- KPI reporting
- Interactive visualizations
- Business storytelling

### Analytics

- Healthcare performance analysis
- Geographic segmentation
- Quality metric evaluation
- Executive reporting
- Business recommendation development

---

# Conclusion

This project demonstrates how SQL and Power BI can be used to transform public healthcare data into actionable business insights.

The analysis identified high-risk hospitals, clinical conditions, and geographic regions that healthcare leaders can target to reduce avoidable readmissions, improve patient outcomes, and potentially reduce CMS reimbursement penalties.