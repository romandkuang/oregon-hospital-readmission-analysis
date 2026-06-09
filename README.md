# Oregon Hospital Readmission Analysis

> Identifying hospitals, conditions, and geographic regions associated with elevated readmission risk using CMS Hospital Readmissions Reduction Program (HRRP) data.

## Project Overview

Hospital readmissions are a major quality and financial concern for healthcare organizations. Under the Centers for Medicare & Medicaid Services (CMS) Hospital Readmissions Reduction Program (HRRP), hospitals with excess readmissions may face reductions in Medicare reimbursement.

This project analyzes FY 2026 Oregon hospital readmission performance to identify:

- High-risk hospitals
- Clinical conditions associated with elevated readmission risk
- Geographic regions requiring attention
- Relationships between CMS hospital ratings and readmission performance

**Tools Used:** SQL, Power BI

---

## Business Problem

Healthcare leaders need to understand where readmission risk is concentrated so quality improvement resources can be allocated effectively.

### Key Questions

1. Which Oregon hospitals have the highest readmission risk?
2. Which clinical conditions contribute most to readmission performance?
3. Are hospital quality ratings associated with readmission outcomes?
4. Which counties may require targeted intervention?

---

## Dashboard Preview

### Executive Overview

![Executive Overview](screenshots/executive_overview.png)

### Hospital Details

![Hospital Details](screenshots/hospital_details.png)

---

## Dashboard KPIs

| KPI | Value |
|------|------:|
| Hospitals with HRRP Data | 29 |
| Average Readmission Ratio (ERR) | 0.961 |
| Worse-than-Expected Conditions | 29 |
| Average CMS Rating | 3.0 |

---

## Project Workflow

### 1. Data Preparation

The analysis combined CMS Hospital Readmissions Reduction Program data with CMS Hospital General Information data.

Data preparation steps included:

- Filtering to Oregon hospitals
- Removing incomplete records
- Validating hospital matches across datasets
- Converting readmission metrics into analysis-ready fields

### 2. SQL Analysis

SQL was used to create summary tables for:

- Hospital Performance
- Condition Performance
- County Performance
- CMS Rating Performance

Key analyses included:

- Identifying hospitals exceeding readmission benchmarks
- Comparing performance across clinical conditions
- Evaluating readmission outcomes by CMS rating
- Assessing geographic performance differences

### 3. Dashboard Development

Power BI was used to develop an executive dashboard focused on:

- KPI reporting
- Hospital benchmarking
- Geographic analysis
- Readmission risk assessment
- Executive decision support

---

## Key Findings

### Finding #1: Readmission Risk Is Concentrated

Only four Oregon hospitals exceeded the CMS benchmark readmission ratio of 1.00:

| Hospital | Average ERR |
|-----------|-----------:|
| Legacy Meridian Park Medical Center | 1.032 |
| Providence Medford Medical Center | 1.032 |
| Providence Willamette Falls Medical Center | 1.024 |
| Bay Area Hospital | 1.013 |

This suggests targeted intervention may be more effective than statewide initiatives.

---

### Finding #2: Higher-Rated Hospitals Demonstrated Better Performance

Average readmission ratios declined as CMS ratings increased:

| CMS Rating | Average ERR |
|------------|------------:|
| 2-Star | 0.999 |
| 3-Star | 0.962 |
| 4-Star | 0.941 |

Although this analysis does not establish causation, the results suggest hospitals with stronger overall quality performance also tend to achieve better readmission outcomes.

---

### Finding #3: Certain Conditions Demonstrated Elevated Risk

Conditions with the highest average readmission ratios:

| Condition | Average ERR |
|------------|------------:|
| Hip/Knee Replacement | 0.990 |
| COPD | 0.976 |
| Pneumonia | 0.961 |

These conditions may represent opportunities for improved discharge planning and follow-up care.

---

### Finding #4: Geographic Differences Exist

Counties with the highest average readmission ratios:

| County | Average ERR |
|---------|------------:|
| Coos | 1.013 |
| Malheur | 0.996 |
| Washington | 0.990 |
| Clackamas | 0.985 |
| Multnomah | 0.964 |

Coos County recorded the highest county-level average readmission ratio and exceeded the CMS benchmark.

---

## Executive Recommendations

### Priority 1: High-Risk Hospitals

Focus quality improvement initiatives on:

- Legacy Meridian Park Medical Center
- Providence Medford Medical Center
- Providence Willamette Falls Medical Center
- Bay Area Hospital

Bay Area Hospital should receive additional attention because it reported the highest number of worse-than-expected conditions.

### Priority 2: Improve Care Pathways

Review discharge planning and follow-up processes for:

- Hip/Knee Replacement
- COPD
- Pneumonia

These conditions demonstrated the highest average readmission ratios across Oregon hospitals.

### Priority 3: Monitor Geographic Risk Areas

Implement county-level monitoring programs focused on:

- Coos County
- Malheur County
- Washington County

These counties exhibited the highest average readmission ratios in the analysis.

---

## Business Impact

This analysis provides a framework for identifying hospitals, conditions, and geographic regions that may benefit from targeted readmission reduction strategies.

Potential benefits include:

- Improved patient outcomes
- Reduced avoidable readmissions
- Better CMS performance
- Reduced reimbursement risk
- More efficient allocation of quality improvement resources

---

## SQL Analysis

The project includes SQL queries used to:

- Identify high-risk hospitals
- Evaluate condition-level performance
- Compare readmission outcomes by CMS rating
- Analyze county-level performance
- Identify hospitals with multiple worse-than-expected conditions

Example:

```sql
SELECT
    condition_name,
    COUNT(DISTINCT facility_id) AS hospitals_reporting,
    AVG(excess_readmission_ratio) AS avg_readmission_ratio
FROM vw_readmissions_clean
GROUP BY condition_name
ORDER BY avg_readmission_ratio DESC;
```

---

## Limitations

- Analysis includes only Oregon hospitals with reportable HRRP measures.
- Hospitals with missing county information were excluded.
- County-level findings should be interpreted cautiously where only a small number of hospitals were represented.
- Observed relationships do not establish causal relationships.

---

## Skills Demonstrated

### Analytics

- Healthcare Analytics
- KPI Development
- Performance Benchmarking
- Business Intelligence Reporting
- Data Storytelling

### SQL

- Data Cleaning
- Data Validation
- Aggregations
- Joins
- Conditional Logic
- Business Query Development

### Power BI

- Dashboard Design
- KPI Reporting
- Interactive Visualizations
- Executive Reporting

---

## Repository Structure

```text
oregon-hospital-readmission-analysis
│
├── README.md
│
├── dashboard
│   └── Oregon_Hospital_Readmission_Analysis.pbix
│
├── screenshots
│   ├── executive_overview.png
│   └── hospital_details.png
│
└── sql
    └── oregon_hospital_readmission_analysis.sql
```

---

## Author

**Romand Kuang**

Aspiring Data Analyst focused on healthcare analytics, business intelligence, and data-driven decision making.

Portfolio: www.romandkuang.com

GitHub: github.com/romandkuang
