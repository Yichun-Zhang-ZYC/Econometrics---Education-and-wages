# The Relationship Between Education and Monthly Earnings

This project analyzes the causal relationship between education and earnings using cross-sectional data from 1980. It explores the impact of years of education on monthly wages and investigates variations across demographic subgroups, including racial and birth order differences.

## Table of Contents
- [Introduction](#introduction)
- [Data](#data)
- [Methodology](#methodology)
- [Key Findings](#key-findings)
- [Extensions](#extensions)
- [Limitations](#limitations)
- [Conclusion](#conclusion)
- [References](#references)

## Introduction
Education is a key determinant of earnings and social mobility. This study examines:
- The association between years of education and monthly wages.
- Differences in this association across racial groups and birth orders.

Using a robust statistical framework, this research provides insights into the economic returns of education and highlights disparities in its impact.

## Data
The dataset is derived from M. Blackburn and D. Neumark (1992) and includes 935 individuals in the US, with variables such as:
- **Wage**: Monthly income in dollars.
- **Education**: Years of formal education (9 to 18 years).
- **Demographics**: Race, marital status, urban vs. rural location.
- **Other factors**: IQ score, years of work experience, and tenure with the current employer.

After cleaning for inconsistencies, the dataset includes 731 observations.

## Methodology
### Regression Model
The primary analysis uses a linear regression model:

Wage = β₀ + β₁(Education) + ε


Where:
- **Wage**: Monthly income (dependent variable).
- **Education**: Years of education (independent variable).
- **ε**: Error term.

### Extensions
- Controlled for additional factors: IQ, KWW score (knowledge of world work), work experience, age, marital status, and weekly working hours.
- Explored interaction effects of race and birth order with education.

### Statistical Measures
- **Robust Standard Errors**: To handle heteroskedasticity.
- **Adjusted R-squared**: To evaluate model fit.
- **t-statistics** and **F-tests**: To assess statistical significance.

## Key Findings
1. **Education and Wages**:
   - Each additional year of education increases monthly earnings by $63.97 (baseline model).
   - After controlling for other factors, this effect remains significant, with an average increase of $50.77 per year of education.

2. **Racial Disparities**:
   - For non-Black individuals, one additional year of education increases earnings by $54.57.
   - For Black individuals, the increase is significantly lower ($7.47).

3. **Birth Order Effects**:
   - First-born individuals benefit more from education, with an additional year increasing wages by $65.83.
   - The effect diminishes for later-born individuals, with fourth-born individuals showing a $55.24 smaller increase compared to first-borns.

4. **Control Variables**:
   - IQ, marital status, urban residency, and tenure with the current employer significantly impact wages.

## Extensions
- **Interaction Terms**: Explored interactions between education and race, and education and birth order.
- **Policy Implications**: Highlighted inequities in returns to education across racial and familial demographics.

## Limitations
- **Data Vintage**: The dataset is from 1980 and may not reflect current dynamics.
- **Quality of Education**: Years of education were used as a proxy, without accounting for quality.
- **Small Sample Sizes**: Subgroup analyses (e.g., birth order) had limited observations, reducing statistical power.
- **Omitted Variables**: Parental education and sibling count were not included due to missing data, potentially leading to omitted variable bias.

## Conclusion
This study confirms the significant positive relationship between education and wages, consistent with prior research. However, it also identifies disparities in returns to education, particularly for Black individuals and later-born children. Policymakers should consider targeted interventions to ensure equitable returns to education.

## References
1. Assari, Shervin. “Blacks’ Diminished Return of Education Attainment on Subjective Health; Mediating Effect of Income.” *Brain Sciences*, vol. 8, no. 9, 2018, p. 176. https://doi.org/10.3390/brainsci8090176.
2. Blackburn, McKinley, and David Neumark. “Unobserved Ability, Efficiency Wages, and Interindustry Wage Differentials.” 1991. https://doi.org/10.3386/w3857.
3. Card, David. “The Causal Effect of Education on Earnings.” *Handbook of Labor Economics*, 1999, pp. 1801–1863. https://doi.org/10.1016/s1573-4463
