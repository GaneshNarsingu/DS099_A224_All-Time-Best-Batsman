# Purpose: Basic dataset loading and overview for the introduction section
# Branch: Eshan-introduction_Dataset+R+data_import

# 1. Load the dataset
df <- read.csv("All-Time-Best-Batsman.csv", header = TRUE)

# 2. Preview the dataset
print("First six rows of the IPL batsman dataset:")
head(df)

# 3. Structure of the dataset
print("Structure of the dataset:")
str(df)

# 4. Summary of variables (useful for dataset description)
print("Summary of numeric variables:")
summary(df)

# -- Notes for Eshan --
# Use this output to describe the dataset in the report:
# - What each variable represents (e.g., Inns = innings, Runs = total runs)
# - The type of data (continuous, integer)
# - Why the dataset is suitable for the research question

# Your report tasks:
# - Write introduction (why analyse IPL batting stats)
# - Write dataset description (rows, columns, meaning)
# - Write RQ and hypotheses
