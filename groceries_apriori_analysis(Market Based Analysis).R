# Load required package
install.packages("arules")
library(arules)

# Load the transactional data
groceries <- read.transactions(
  "C:/Users/Hirdesh Kumar Yadav/Downloads/R Predictive Analysis/groceries.csv",
  sep = ","
)

# Display the sparse matrix of transactions
print(groceries)

# Summary of transactions: number of transactions, items, and density
summary(groceries)

# Inspect the first 5 transactions
inspect(groceries[1:5])

# Check the frequency of the first three items
itemFrequency(groceries[, 1:3])

# Plot item frequency with a minimum support of 10%
itemFrequencyPlot(groceries, support = 0.1)

# Plot the top 20 items by frequency
itemFrequencyPlot(groceries, topN = 20)

# Visualize the sparse matrix for the first 5 transactions
image(groceries[1:5])

# Visualize a sample of 100 transactions to view the sparse matrix
image(sample(groceries, 100))

# Run the Apriori algorithm with default parameters
apriori(groceries)

# Generate association rules with custom support and confidence
groceryrules <- apriori(
  groceries,
  parameter = list(
    support = 0.006,
    confidence = 0.25,
    minlen = 2
  )
)

# Display the number of rules generated
print(groceryrules)

# Summary of generated rules, including lift values
summary(groceryrules)

# Inspect the first three rules
inspect(groceryrules[1:3])

# Sort rules by lift and inspect the top 5 rules
inspect(sort(groceryrules, by = "lift")[1:5])

# Subset rules that contain "berries" as an item
berryrules <- subset(groceryrules, items %in% "berries")
inspect(berryrules)

# Export rules to a CSV file
write(groceryrules, file = "groceryrules.csv", sep = ",", quote = TRUE, row.names = FALSE)

# Convert rules to a data frame and check structure
groceryrules_df <- as(groceryrules, "data.frame")
str(groceryrules_df)
