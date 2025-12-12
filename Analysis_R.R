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

## 5. NORMALITY CHECK (OPTIONAL) ---------------------------

# These are quick checks; they don't need to be perfect.
# Histograms already give a good idea, but we can also use:
# Shapiro-Wilk tests (on smaller samples they are more meaningful)

shapiro_inns <- shapiro.test(Inns)
shapiro_runs <- shapiro.test(Runs)

print("Shapiro-Wilk normality test for Inns:")
shapiro_inns

print("Shapiro-Wilk normality test for Runs:")
shapiro_runs

# In many cricket datasets Runs are quite skewed,
# so we will use Spearman correlation in the next step.


## 6. CORRELATION TEST (HYPOTHESIS TESTING) ----------------

# Research question:
# Is there a significant correlation between Inns and Runs?

# Null hypothesis H0: there is no correlation between Inns and Runs.
# Alternative hypothesis H1: there is a correlation between Inns and Runs.

# Spearman rank correlation (does not assume normality)
cor_result_spearman <- cor.test(Inns, Runs, method = "spearman",exact = FALSE)

print("Spearman correlation test between Inns and Runs:")
cor_result_spearman

# If your histograms and normality tests suggest the data are
# approximately normal and you want Pearson instead, you can also run:
cor_result_pearson <- cor.test(Inns, Runs, method = "pearson")

print("Pearson correlation test between Inns and Runs:")
cor_result_pearson

## 7. SIMPLE PRINT-OUT SUMMARY -----------------------------

cat("\n---------------- SUMMARY FOR REPORT ----------------\n")
cat("Mean Inns:", mean_inns, "  |  Mean Runs:", mean_runs, "\n")
cat("Spearman rho:", cor_result_spearman$estimate,
    "  |  p-value:", cor_result_spearman$p.value, "\n")
cat("Pearson r:", cor_result_pearson$estimate,
    "  |  p-value:", cor_result_pearson$p.value, "\n")
cat("----------------------------------------------------\n")

hist(Inns,
     main = "Histogram of Innings Played",
     xlab = "Innings (Inns)",
     ylab = "Density",
     freq = FALSE)

x_vals <- seq(min(Inns), max(Inns), length.out = 100)
lines(x_vals,
      dnorm(x_vals, mean = mean(Inns), sd = sd(Inns)),
      lwd = 2)



