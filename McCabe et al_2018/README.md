# Visualizing Interaction Effects: Resources and Code

This repository provides resources and code associated with the paper:

**McCabe, C. J., Kim, D. S., & King, K. M. (2018).**  
*Improving present practices in the visual display of interactions.*  
**Advances in Methods and Practices in Psychological Science, 1(2), 147–165.**  


---

## Background
Interaction hypotheses are widely used in psychological research to examine how effects differ across groups (e.g., gender, race) or how environmental and individual differences modify outcomes. Traditionally, researchers have relied on methods like **simple slopes analysis** and the **Johnson-Neyman (J-N) technique**. However, these approaches often lack **statistical transparency** and **visual clarity**, leading to challenges in interpretation.

---

## Limitations of Traditional Methods
- **Uncertainty Representation**: Most visualizations fail to depict confidence intervals, limiting their statistical rigor.
- **Lack of Observed Data**: Interaction plots rarely display underlying data distributions, hindering model evaluation.
- **Interpretation Challenges**: Key features such as crossover points are difficult to discern from standard plots.

---

## Proposed Solution: interActive Application
The authors developed the **interActive** application using **R** and **Shiny**, an open-source tool to enhance interaction effect visualization.

### Key Features:
- Supports **simple slopes analysis** and the **J-N technique**.
- Visualizes observed data and statistical uncertainty.
- Introduces **small multiples** for clear depiction of interaction patterns.

### Design Principles:
- Ensure **visual precision** and **statistical transparency**.
- Integrate data distributions and uncertainty measures in visualizations.

---

## Code Overview

### **1. johnson_neyman.R**
R script implementing the Johnson-Neyman technique to analyze interaction effects across a range of moderator values.

---

### **2. fig3_code_uncertainty.R**
![Fig. 3: Sample Size and Uncertainty](https://github.com/ask-psy-lab/ASK/blob/main/Image/McCabe%20et%20al%202018%20fig3.png?raw=true)


Script for generating **Figure 3** in the paper, which visualizes the impact of sample size (150 vs. 500) on the **uncertainty** of simple slope estimates.

#### Associated Data:
- `figure3_uncertainty_plotestimates_n150.csv`: Simulated data for sample size \( N = 150 \).
- `figure3_uncertainty_plotestimates_n500.csv`: Simulated data for sample size \( N = 500 \).

#### Key Visualization Features:
- **Confidence Intervals**: Shaded regions around predicted slopes for \( N = 150 \) and \( N = 500 \).
- **Comparison**: Highlights narrower confidence intervals with larger sample sizes.
