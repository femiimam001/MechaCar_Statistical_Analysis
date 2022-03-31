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
