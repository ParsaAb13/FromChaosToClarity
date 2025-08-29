# FromChaosToClarity
Exploring the correlation between depression (BDI) and internet addiction (IAT) through data analysis and visualization in R

## Overview
This project investigates the correlation between depression (measured by BDI-II) and internet addiction (measured by IAT) among a sample population. Using R, the project performs statistical analysis, visualization, and linear regression to understand the relationship between these variables.

## Dataset
The dataset `BDIIAT.xlsx` contains the following columns:
- `BDI2RESULT`: Depression scores from BDI-II questionnaire
- `IATRESULT`: Internet Addiction scores from IAT questionnaire

## Analysis Performed
1. **Descriptive Statistics**: Summaries of BDI-II and IAT scores
2. **Visualization**: Histograms and scatter plots
3. **Normality Check**: Shapiro-Wilk test
4. **Correlation Analysis**: Pearson and Spearman correlations
5. **Linear Regression**: Modeling the relationship between depression and internet addiction

## Tools Used
- R Programming Language
- Packages: `readxl`, `ggplot2`, `stats`

## How to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/FromChaosToClarity.git

2. Open R and set working directory to the project folder.


3. Install necessary packages:

install.packages("readxl")
install.packages("ggplot2")


4. Run the R scripts to reproduce the analysis.



## Results

Pearson correlation: 0.68 (p < 0.001)

Linear regression shows a significant positive relationship between depression and internet addiction.

Visualizations included in the repository show scatter plots with regression lines.


## Conclusion

This project highlights a notable correlation between depression and internet addiction, providing insights for psychological research and interventions.
