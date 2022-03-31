# MechaCar Statistical Analysis For AutosRUs

## Overview of Project

Jeremy who was a senior staff at AutosRUs and has a strong internal connections and exhausted knowledge of the product has been selected as the primary analyst for the company's data analytics team. He was contacted by the top level executive management about a special project which was AutosRUs' newest prototype,the MechaCar, which was suffering from production troubles that were blocking the manufacturing team's progress.AutosRUs’ top level executive management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

This project, involves me helping Jeremy and the data analytics team do the following:

1. Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
3. Run t-tests to determine if the manufacturing lots are statistically different from the mean population
4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Resources and Tools Used

Data Source: MechaCar_mpg.csv and Suspension_Coil.csv
Data Tools: tidyverse, dplyr, ggplot2 and MechaCarChallenge.RScript.
Software: RStudio and R

# Deliverable 1:

## Predicting MPG Using Linear Regression

The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using your knowledge of R, you’ll design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file.

### Deliverable Metthod:

The MechaCar_mpg.csv file is imported and read into a dataframe
An RScript is written for a linear regression model to be performed on all six variables
An RScript is written to create the statistical summary of the linear regression model with the intended p-values
There is a summary that addresses all three questions.

### Results on Deliverable:

### Model

mpg = (6.267)vehicle_length + (0.0012)vehicle_weight + (0.0688)spoiler_angle + (3.546)ground_clearance + (-3.411)AWD + (-104.0)

![mechacar_mpg](https://github.com/femiimam001/MechaCar_Statistical_Analysis/blob/main/mechacar_mpg.PNG)

Summary Statistics:
From the above output we can deduce that:

The vehicle length, and vehicle ground clearance are statistically likely to provide non-random amounts of variance to the model. That is to say, the vehicle length and vehicle ground clearance have a significant impact on miles per gallon on the MechaCar prototype. Conversely, the vehicle weight, spoiler angle, and All Wheel Drive (AWD) have p-Values that indicate a random amount of variance with the dataset.

The p-Value for this model, p-Value: 5.35e-11, is much smaller than the assumed significance level of 0.05%. This indicates there is sufficient evidence to reject our null hypothesis, which further indcates that the slope of this linear model is not zero.

This linear model has an r-squared value of 0.7149, which means that approximately 71% of all mpg predictions will be determined by this model. Relatively speaking, his multiple regression model does predict mpg of MechaCar prototypes effectively.

If we remove the less impactful independent variables (vehicle weight, spoiler angle, and All Wheel Drive), the predictability does decrease, but not drastically: the r-squared value falls from 0.7149 to 0.674.

# Deliverable 2

## Summary Statistics on Suspension Coils

The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Using your knowledge of R, you’ll create a summary statistics table to show:

The suspension coil’s PSI continuous variable across all manufacturing lots
The following PSI metrics for each lot: mean, median, variance, and standard deviation.

### Deliverable Method:

Download the Suspension_Coil.csv file, and place it in the active directory for your R session.
In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

The Suspension Coil dataset provided for the MechaCar contains the results of testing the weight capacities of multiple suspension coils from multiple production lots to determine consistency.

Image of manufacturing lots
![mfg_lots](https://github.com/femiimam001/MechaCar_Statistical_Analysis/blob/main/mfg_lots.PNG)

Deliverable 3:

## t-Tests on Suspension Coils

## Deliverable Method:

In your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
An RScript is written for t-test that compares all manufacturing lots against mean PSI of the population
An RScript is written for three t-tests that compare each manufacturing lot against mean PSI of the population
There is a summary of the t-test results across all manufacturing lots and for each lot.

The next step is to conduct a t-test on the suspension coil data to determine whether there is a statistical difference between the mean of this provided sample dataset and a hypothesized, potential population dataset. Using the presumed population mean of 1500, we find the following:

There is a summary of the t-test results across all manufacturing lots.
t.test(lot1$PSI,mu=1500)

Lot 1 sample actually has the true sample mean of 1500, again as we saw in the summary statistics above. With a p-Value of 1, clearly we cannot reject (i.e. accept) the null hypothesis that there is no statistical difference between the observed sample mean and the presumed population mean (1500).

Lot 2 has essentially the same outcome with a sample mean of 1500.02, a p-Value of 0.61; the null hypothesis cannot be rejected, and the sample mean and the population mean of 1500 are statistically similar.

However, Lot 3, not surprisingly is a different scenario. Here the sample mean is 1496.14 and the p-Value is 0.04, which is lower than the common significance level of 0.05. All indicating to reject the null hypothesis that this sample mean and the presumed population mean are not statistically different.

    One Sample t-test

data: lot1$PSI
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
1499.719 1500.281
sample estimates:
mean of x
1500

> t.test(lot2$PSI,mu=1500)

    One Sample t-test

data: lot2$PSI
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
1499.423 1500.977
sample estimates:
mean of x
1500.2

> t.test(lot3$PSI,mu=1500)

    One Sample t-test

data: lot3$PSI
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
1492.431 1499.849
sample estimates:
mean of x
1496.14
