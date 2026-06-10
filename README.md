# Oregon Hospital Readmission Analysis

> Identifying hospitals, clinical conditions, and geographic regions associated with elevated readmission risk to support quality improvement initiatives and reduce CMS reimbursement risk.

---

# Executive Summary

Hospital readmissions remain a critical performance metric for healthcare organizations because excessive readmissions can negatively impact patient outcomes while exposing hospitals to financial penalties under the Centers for Medicare & Medicaid Services (CMS) Hospital Readmissions Reduction Program (HRRP).

This analysis evaluates FY2026 Oregon hospital performance using CMS HRRP data and hospital quality ratings to identify where readmission risk is concentrated and where healthcare leaders should focus improvement efforts.

Key findings revealed that only 4 of 29 Oregon hospitals (13.8%) exceeded the CMS benchmark readmission ratio of 1.00, indicating that elevated risk is concentrated among a relatively small subset of facilities. Higher-rated hospitals consistently demonstrated lower readmission ratios, while Hip/Knee Replacement, COPD, and Pneumonia emerged as the highest-risk clinical conditions statewide.

The analysis provides hospital executives, quality improvement teams, and healthcare operations leaders with a framework for prioritizing interventions, allocating resources, and reducing avoidable readmissions.

---

# Business Context

Healthcare organizations participating in the Hospital Readmissions Reduction Program are evaluated on their ability to prevent avoidable patient readmissions.

Excess readmissions may indicate operational inefficiencies such as:

* Inadequate discharge planning
* Poor care-transition management
* Insufficient patient education
* Limited post-discharge follow-up

Because CMS may reduce Medicare reimbursements for hospitals with excessive readmissions, healthcare leaders require visibility into where readmission risk is concentrated and which facilities may require targeted intervention.

---

# Business Questions

### Hospital Performance

* Which Oregon hospitals demonstrate the highest readmission risk?
* Which hospitals exceed CMS readmission benchmarks?

### Clinical Performance

* Which conditions contribute most to elevated readmission risk?
* Which service lines may benefit from targeted quality improvement efforts?

### Quality Performance

* How do CMS Overall Hospital Ratings relate to readmission outcomes?
* Do higher-rated hospitals consistently demonstrate lower readmission risk?

### Geographic Performance

* Which counties exhibit elevated readmission performance?
* Where should regional healthcare initiatives be prioritized?

---

# Northstar Metrics

## 1. Average Readmission Ratio (ERR)

Primary measure of hospital readmission performance.

Formula:

Average ERR =
SUM(Excess Readmission Ratio)
÷ Number of Reported Conditions

Interpretation:

* Greater than 1.00 = Worse than expected
* Equal to 1.00 = Expected performance
* Less than 1.00 = Better than expected

Business Importance:

Serves as the primary indicator of readmission risk exposure and potential CMS reimbursement penalties.

---

## 2. High-Risk Condition Rate

Measures the percentage of reported conditions exceeding CMS expectations.

Formula:

High-Risk Condition Rate =
(Worse Than Expected Conditions
÷ Total Reported Conditions) × 100

Business Importance:

Identifies hospitals with broader performance challenges rather than isolated issues.

---

## 3. Average CMS Rating

Measures overall hospital quality performance.

Formula:

Average CMS Rating =
SUM(CMS Ratings)
÷ Number of Hospitals

Business Importance:

Provides a standardized benchmark for comparing overall hospital quality and evaluating its relationship to readmission performance.

---

# Dashboard Preview

## Executive Overview

![Executive Overview](screenshots/executive_overview.png)

## Hospital Details

![Hospital Details](screenshots/hospital_details.png)

---

# Dashboard KPIs

| KPI                            | Value |
| ------------------------------ | ----: |
| Hospitals with HRRP Data       |    29 |
| Average Readmission Ratio      | 0.961 |
| Worse-Than-Expected Conditions |    29 |
| Average CMS Rating             |   3.0 |

---

# Data Sources

## CMS Hospital Readmissions Reduction Program (HRRP)

Provided:

* Excess Readmission Ratios
* Clinical Condition Performance
* Hospital Identifiers

## CMS Hospital General Information

Provided:

* Hospital Characteristics
* Geographic Information
* CMS Overall Hospital Ratings

---

# Technical Approach

## Data Preparation

The project combined CMS HRRP and Hospital General Information datasets to create a unified reporting model.

Key preparation activities included:

* Filtering to Oregon hospitals
* Standardizing facility identifiers
* Validating hospital matches across datasets
* Removing incomplete records
* Creating calculated performance metrics
* Verifying KPI consistency between SQL and Power BI

---

## SQL Analysis

SQL was used to investigate performance across multiple dimensions.

Analysis included:

* Hospital-level benchmarking
* Condition-level performance analysis
* County-level aggregation
* CMS Rating segmentation
* Risk classification calculations

Example Query:

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

## Power BI Dashboard Development

Power BI was used to develop an executive reporting solution focused on:

* KPI monitoring
* Hospital benchmarking
* Geographic performance analysis
* Readmission risk identification
* Executive decision support

Interactive filtering enables stakeholders to evaluate performance by:

* Hospital
* County
* CMS Rating
* Clinical Condition

---

# Key Findings

## Finding #1: Readmission Risk Is Highly Concentrated

Only 4 of 29 Oregon hospitals (13.8%) exceeded the CMS benchmark readmission ratio of 1.00.

| Hospital                                   | Average ERR |
| ------------------------------------------ | ----------: |
| Legacy Meridian Park Medical Center        |       1.032 |
| Providence Medford Medical Center          |       1.032 |
| Providence Willamette Falls Medical Center |       1.024 |
| Bay Area Hospital                          |       1.013 |

Because elevated risk is concentrated among a small subset of facilities, targeted quality-improvement initiatives are likely to generate greater impact than broad statewide interventions.

Bay Area Hospital warrants particular attention because it recorded multiple worse-than-expected conditions, indicating broader operational risk.

---

## Finding #2: Higher-Rated Hospitals Demonstrated Better Readmission Performance

Average readmission ratios consistently declined as CMS ratings increased.

| CMS Rating | Average ERR |
| ---------- | ----------: |
| 2-Star     |       0.999 |
| 3-Star     |       0.962 |
| 4-Star     |       0.941 |

Hospitals rated 4 stars achieved a 5.8% lower average readmission ratio than 2-star hospitals.

Although this relationship does not establish causality, the results suggest hospitals with stronger quality systems may also maintain more effective discharge planning, care coordination, and patient follow-up processes.

---

## Finding #3: Elevated Risk Was Concentrated Within Specific Clinical Conditions

The highest statewide average readmission ratios were observed in:

| Condition            | Average ERR |
| -------------------- | ----------: |
| Hip/Knee Replacement |       0.990 |
| COPD                 |       0.976 |
| Pneumonia            |       0.961 |

These findings suggest that improvements in discharge protocols, patient education, rehabilitation planning, and follow-up care may yield measurable reductions in readmission risk.

Rather than implementing hospital-wide interventions, healthcare leaders may achieve greater impact by focusing on these high-risk service lines.

---

## Finding #4: Geographic Variation Suggests Localized Risk Factors

Several counties demonstrated higher average readmission ratios than the statewide average.

| County     | Average ERR |
| ---------- | ----------: |
| Coos       |       1.013 |
| Malheur    |       0.996 |
| Washington |       0.990 |
| Clackamas  |       0.985 |
| Multnomah  |       0.964 |

Coos County was the only county to exceed the CMS benchmark of 1.00.

This pattern suggests regional healthcare access, post-acute care availability, patient demographics, and care-transition infrastructure may influence readmission outcomes beyond individual hospital performance.

---

# Stakeholder Impact

## Hospital Executives

Identify facilities at greatest risk of future CMS reimbursement penalties and prioritize quality-improvement investments.

## Quality Improvement Teams

Target specific clinical conditions contributing most to elevated readmission risk.

## Regional Healthcare Leaders

Monitor county-level performance trends and coordinate improvement initiatives across healthcare systems.

## Care Coordination Teams

Strengthen discharge planning and post-discharge follow-up programs for high-risk patient populations.

---

# Strategic Recommendations

## Priority 1: Focus Resources on High-Risk Facilities

Conduct targeted operational reviews of:

* Legacy Meridian Park Medical Center
* Providence Medford Medical Center
* Providence Willamette Falls Medical Center
* Bay Area Hospital

Review discharge workflows, care-transition programs, and follow-up protocols to identify opportunities for improvement.

---

## Priority 2: Improve High-Risk Care Pathways

Prioritize quality-improvement initiatives within:

* Hip/Knee Replacement
* COPD
* Pneumonia

These conditions demonstrated the highest average readmission risk statewide.

---

## Priority 3: Monitor Geographic Hotspots

Develop county-level monitoring programs focused on:

* Coos County
* Malheur County
* Washington County

These regions demonstrated elevated readmission performance and may benefit from coordinated healthcare interventions.

---

## Priority 4: Benchmark High-Performing Hospitals

Evaluate operational practices among hospitals demonstrating consistently low readmission ratios and use those findings to establish statewide best-practice frameworks.

---

# Business Impact

This analysis provides a repeatable framework for identifying hospitals, conditions, and geographic regions associated with elevated readmission risk.

Potential organizational benefits include:

* Reduced avoidable readmissions
* Improved patient outcomes
* Stronger CMS performance
* Reduced reimbursement risk
* More effective allocation of quality-improvement resources
* Data-driven operational decision making

---

# Limitations

* Analysis includes only Oregon hospitals reporting HRRP measures.
* Hospitals with incomplete geographic information were excluded.
* County-level results may be influenced by small sample sizes.
* Observed relationships should not be interpreted as causal relationships.
* Additional patient-level data would strengthen root-cause analysis.

---

# Skills Demonstrated

### Analytics

* Healthcare Analytics
* KPI Development
* Root Cause Investigation
* Performance Benchmarking
* Executive Reporting
* Data Storytelling

### SQL

* Data Cleaning
* Data Validation
* Joins
* Aggregations
* Conditional Logic
* Business Query Development

### Power BI

* Dashboard Design
* KPI Reporting
* Interactive Reporting
* Executive Dashboard Development
* Data Visualization

---

# Repository Structure

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

# Author

**Romand Kuang**

Data Analyst | Healthcare Analytics | Business Intelligence

Portfolio: [www.romandkuang.com](http://www.romandkuang.com)

GitHub: github.com/romandkuang
