# DS099_A224_All-Time-Best-Batsman
7COM1079-0901-2025 - Team Research and Development Project

Project Overview (Eshan’s Contribution)

This repository contains our group project for the module 7COM1079 – Team Research and Development.
My contribution focuses on the Introduction, Dataset description, and the Research Question.

I added an R script that:

loads the IPL batsman dataset

previews the first rows

prints the structure

provides summary statistics

This information was used to describe the dataset clearly in the report and to justify our research question:

“Is there a statistically significant correlation between the number of innings played and the total runs scored by IPL batsmen?”

### Khais – Descriptive statistics for Inns and Runs

I added a small section of code that calculates the mean, median and standard deviation for both `Inns` and `Runs`. This gives us a quick summary of the central values and spread in the data, and it backs up the background and visualisation sections with actual numbers, not just plots.

### Ganesh – Visualisation of Inns and Runs

For the visual part of the project I added code to plot two histograms and one main scatterplot.

- The first histogram shows the distribution of innings played (`Inns`).
- The second histogram shows the distribution of total runs scored (`Runs`).
- The scatterplot places `Inns` on the x-axis and `Runs` on the y-axis, and
- I added a simple regression line using `lm(Runs ~ Inns)` and `abline()` to make the overall trend easier to see.

These graphs support our research question by showing, visually, how strongly innings and runs move together and by highlighting the skew in both variables. The histograms are used as the required supplementary graphics, and the scatterplot is the main plot discussed in the Visualisation section of the report.

