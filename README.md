# Tennessee Acute Hepatitis Surveillance, 2016

## Overview
Analysis of CDC NNDSS data for acute hepatitis cases (A, B, C) in Tennessee, 2016. Demonstrates data cleaning, filtering, pivoting, and visualization in R.

## Key Findings
- Hepatitis B was the most commonly reported acute hepatitis in Tennessee (39 weeks with cases)
- Hepatitis C appeared in 27 weeks
- Hepatitis A was rare (only 4 weeks with cases)
- Peak activity occurred around MMWR week 46

## Files
- `hepatitis_analysis.R` - R script for data processing and visualization
- `hepatitis_cases_tn_2016.png` - Final plot output
- `NNDSS_-_Table_II._Hepatitis_(viral,_acute)_20260420.csv` - Source data

## Tools Used
- R 4.5.0
- tidyverse (dplyr, ggplot2, tidyr, readr)

## How to Run
```r
source("hepatitis_analysis.R")

```

# Data Source
## CDC NNDSS - Table II. Hepatitis (viral, acute)

# Privacy & Data Limitations

CDC NNDSS data suppresses counts for small jurisdictions to prevent re-identification. This project respects those suppression rules. County-level hepatitis data is not publicly available from CDC due to privacy concerns — a reality I'm acutely aware of given current legislative threats to PHI protections in Tennessee.
---
### Add README and Push

```bash
echo "# Tennessee Acute Hepatitis Surveillance" > README.md
git add README.md
git commit -m "Add README"
git push
```

**Status**: Complete analysis of 2016 data. Next steps: space-time cluster detection and regional comparison.
