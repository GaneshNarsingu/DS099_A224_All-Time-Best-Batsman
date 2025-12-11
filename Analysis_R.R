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

## 2. BASIC DESCRIPTIVE STATISTICS -------------------------

# Mean, median and standard deviation for each variable
mean_inns  <- mean(Inns, na.rm = TRUE)
median_inns <- median(Inns, na.rm = TRUE)
sd_inns    <- sd(Inns, na.rm = TRUE)

mean_runs  <- mean(Runs, na.rm = TRUE)
median_runs <- median(Runs, na.rm = TRUE)
sd_runs    <- sd(Runs, na.rm = TRUE)

print("Descriptive statistics for Inns:")
mean_inns; median_inns; sd_inns

print("Descriptive statistics for Runs:")
mean_runs; median_runs; sd_runs

## 3. HISTOGRAMS (SUPPLEMENTARY PLOTS) ---------------------

# Histogram of Innings played
hist(Inns,
     main = "Histogram of Innings Played",
     xlab = "Innings (Inns)",
     ylab = "Frequency")

# Histogram of Total Runs
hist(Runs,
     main = "Histogram of Total Runs Scored",
     xlab = "Total Runs",
     ylab = "Frequency")

## 4. SCATTERPLOT (MAIN VISUALISATION) ---------------------

# Basic scatterplot of Inns vs Runs
plot(Inns, Runs,
     main = "Scatterplot of Innings vs Total Runs (IPL batsmen)",
     xlab = "Innings played (Inns)",
     ylab = "Total runs scored (Runs)")

# Add a simple regression line (helps to see the trend)
model <- lm(Runs ~ Inns)
abline(model, col = "red", lwd = 2)



