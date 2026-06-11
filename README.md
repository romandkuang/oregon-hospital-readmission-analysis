



# Oregon Hospital Readmission Analysis



### Identifying Operational Drivers of Readmission Risk Across Oregon's Acute Care Network



---



## Executive Summary



Reporting to the Chief Quality Officer of a statewide healthcare network, an analysis was conducted to identify hospitals, clinical service lines, and geographic regions associated with elevated readmission risk under the CMS Hospital Readmissions Reduction Program (HRRP).



The assessment revealed that readmission risk is highly concentrated rather than broadly distributed across Oregon hospitals. While the statewide average Excess Readmission Ratio (ERR) remained below the CMS benchmark at **0.961**, only **4 of 29 hospitals (13.8%)** exceeded the threshold of **1.00**.



Further analysis identified a meaningful relationship between hospital quality performance and readmission outcomes. Hospitals receiving **4-star CMS ratings achieved readmission performance 5.8% better than 2-star facilities**, suggesting operational excellence may play a significant role in reducing avoidable readmissions.



At the service-line level, **Hip/Knee Replacement, COPD, and Pneumonia** demonstrated the highest average readmission risk statewide. Geographically, **Coos County** emerged as the only county exceeding the CMS benchmark.



These findings suggest a targeted intervention strategy may generate substantially greater improvements than broad statewide initiatives.



---



## Dashboard Overview



![Executive Overview](screenshots/executive_overview.png)




---



## Business Questions



### Hospital Performance



* Which Oregon hospitals demonstrate the highest readmission risk?

* Which facilities exceed CMS benchmarks?



### Clinical Performance



* Which conditions contribute most significantly to readmission risk?

* Which service lines should receive operational attention?



### Quality Performance



* Are higher-rated hospitals achieving better readmission outcomes?



### Geographic Performance



* Which counties exhibit elevated risk?

* Where should regional quality-improvement efforts be prioritized?



---



## Key Finding #1



### Only 13.8% of Hospitals Exceeded CMS Benchmarks



| Hospital                                   | Average ERR |

| ------------------------------------------ | ----------: |

| Legacy Meridian Park Medical Center        |       1.032 |

| Providence Medford Medical Center          |       1.032 |

| Providence Willamette Falls Medical Center |       1.024 |

| Bay Area Hospital                          |       1.013 |



Readmission risk was concentrated among a small number of facilities, suggesting targeted interventions may deliver a greater return than broad statewide initiatives.


```markdown

![Hospital Risk Analysis](screenshots/hospital_risk_analysis.png)




---



## Key Finding #2



### Higher-Rated Hospitals Consistently Outperformed Lower-Rated Facilities



| CMS Rating | Average ERR |

| ---------- | ----------: |

| 2-Star     |       0.999 |

| 3-Star     |       0.962 |

| 4-Star     |       0.941 |



Hospitals rated 4 stars achieved readmission performance approximately **5.8% better** than hospitals rated 2 stars.



```markdown

![CMS Rating Analysis](screenshots/cms_rating_analysis.png)

```



---



## Key Finding #3



### Orthopedic and Respiratory Care Pathways Demonstrated Elevated Risk



| Condition            | Average ERR |

| -------------------- | ----------: |

| Hip/Knee Replacement |       0.990 |

| COPD                 |       0.976 |

| Pneumonia            |       0.961 |



These service lines represent the greatest opportunity for targeted operational improvement.



```markdown

![Condition Analysis](screenshots/condition_analysis.png)

```



---



## Key Finding #4



### Geographic Variation Suggests Localized Operational Challenges



| County     | Average ERR |

| ---------- | ----------: |

| Coos       |       1.013 |

| Malheur    |       0.996 |

| Washington |       0.990 |

| Clackamas  |       0.985 |

| Multnomah  |       0.964 |



Coos County was the only county to exceed the CMS benchmark.



---



## Hospital Performance Dashboard



![Hospital Details](screenshots/hospital_details.png)




---



## Strategic Recommendations



### Hospital Operations Leadership



* Conduct operational reviews of the four hospitals exceeding CMS benchmarks.

* Strengthen discharge planning and follow-up protocols.

* Establish monthly monitoring for facilities approaching benchmark thresholds.



### Quality Improvement Teams



* Focus intervention programs on Hip/Knee Replacement, COPD, and Pneumonia.

* Standardize care-transition workflows across facilities.

* Benchmark high-performing hospitals.



### Regional Healthcare Stakeholders



* Prioritize collaborative initiatives within Coos County.

* Improve coordination between hospitals, primary care providers, and post-acute care organizations.



---



## Business Impact



This analysis demonstrates that Oregon's readmission challenge is concentrated among a limited number of hospitals, conditions, and geographic regions.



By directing quality-improvement resources toward the highest-risk facilities and patient populations, healthcare leaders can:



* Reduce avoidable readmissions

* Improve patient outcomes

* Reduce CMS reimbursement risk

* Improve operational efficiency

* Increase the effectiveness of quality-improvement investments



---



## Data Model



```text

Hospital Information

        │

        ▼

Readmission Performance

        │

        ├── Condition Analysis

        ├── CMS Rating Analysis

        └── County Analysis

```



---



## Repository Structure



```text

oregon-hospital-readmission-analysis

│

├── README.md

├── dashboard

├── screenshots

├── sql

└── data

```



---



## Author



**Romand Kuang**



Data Analyst | Healthcare Analytics | Business Intelligence



Portfolio: [www.romandkuang.com](http://www.romandkuang.com)



GitHub: github.com/romandkuang



---


