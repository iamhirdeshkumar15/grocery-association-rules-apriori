# Grocery Association Rules Apriori
R script for association rule mining on grocery transaction data using the Apriori algorithm. It explores item frequencies, visualizes data, generates rules with custom support and confidence, and exports them to a CSV file. Ideal for market basket analysis and uncovering transaction patterns.


This project performs **association rule mining** on a grocery transaction dataset using the **Apriori** algorithm. The aim is to uncover patterns and relationships between items bought together frequently, which is useful for market basket analysis.

## Project Overview

The project includes an R script that analyzes a dataset of grocery transactions using the **Apriori algorithm**. The key steps in the analysis are:
1. **Data Import**: The grocery transaction data is imported from a CSV file (`groceries.csv`).
2. **Item Frequency Analysis**: Frequencies of items are analyzed to identify popular products.
3. **Association Rule Generation**: Association rules are generated with custom support and confidence thresholds.
4. **Rule Evaluation**: The generated rules are filtered, sorted by lift, and exported to a CSV file (`groceryrules.csv`).
5. **Visualization**: Visualizations of item frequencies and the sparse matrix are included to help understand the data.

## Files

- **groceries.csv**: The raw grocery transaction dataset used for the analysis.
- **groceryrules.csv**: The CSV file that contains the association rules generated from the Apriori algorithm.
- **groceries_apriori_analysis.R**: The R script that performs all steps in the analysis, from loading data to generating and exporting rules.

## Installation

To run the analysis, you need to install the necessary R packages. You can install them by running the following commands in your R console:

```r
install.packages(\"arules\")
