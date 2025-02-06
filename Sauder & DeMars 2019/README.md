# Pairwise Comparison Procedures (PCPs) in ANOVA

This repository provides guidance and R code for implementing Pairwise Comparison Procedures (PCPs)
 in ANOVA, based on the recommendations from the study:

Sauder, D. C., & DeMars, C. E. (2019).  
An Updated Recommendation for Multiple Comparisons.  
Advances in Methods and Practices in Psychological Science, 2(1), 26–44.  

---

## Background

PCPs are used to determine which group means differ after a significant ANOVA test. However, selecting inappropriate PCPs can lead to:
- Increased Type I errors (false positives).
- Reduced power (ability to detect true differences).

The study evaluates 18 PCPs under various conditions, focusing on:
1. Type I error control: Ensuring errors remain within acceptable levels.
2. Power: Balancing sensitivity to detect differences with Type I error control.
3. Assumption violations: Many PCPs assume equal variances and sample sizes, which may not hold in practice.

---

## Recommended PCPs

The following methods are recommended for robust performance across all conditions:
1. Games-Howell (Best overall choice)
2. Dunnett’s C
3. Dunnett’s T3
4. Tamhane’s T2

### Key Advantages:
- Maintain Type I error control even under assumption violations (e.g., unequal variances and sample sizes).
- Provide high statistical power compared to other PCPs.

### When to Use:
1. Confirmatory research: Use these methods to strictly control Type I errors.
2. Exploratory research: Adjust the alpha level (e.g., 0.10 or 0.15) for higher power when detecting differences.

---
