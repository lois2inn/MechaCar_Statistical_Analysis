# MechaCar_Statistical_Analysis

## Overview

The project helps a data analyst perform retrospective analysis of historical data, analytical verification and validation of current automotive specifications and study design of future product testing as below:
- Load, clean up, and reshape datasets using tidyverse in R.
- Visualize datasets with basic plots such as line, bar, and scatter plots using ggplot2.
- Generate and interpret more complex plots such as boxplots and heatmaps using ggplot2.
- Plot and identify distribution characteristics of a given dataset.
- Formulate null and alternative hypothesis tests for a given data problem.
- Implement and evaluate simple linear regression and multiple linear regression models for a given dataset.
- Implement and evaluate the one-sample t-Tests, two-sample t-Tests, and analysis of variance (ANOVA) models for a given dataset.
- Implement and evaluate a chi-squared test for a given dataset.
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

## Resources

- R (4.2.2)
- RStudio 

## Linear Regression to Predict MPG

The MechaCar dataset contains 50 prototype MechaCars, which were produced using multiple design specifications to identify ideal vehicle performance.

### Multiple Regression Model

- Multiple regression with R is performed to predict the MPG of MechaCar given certain values of vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance.

<img src="images/lm_coef.png" width="500" />

- With the coefficients generated, the linear model for this scenario can be as below:     
**Y = -0.0104 + 6.267 X<sub>1</sub> + 0.0013 X<sub>2</sub> + 0.0688 X<sub>3</sub> + 3.546 X<sub>4</sub> - 3.411 X<sub>5</sub> + c**     
where Y = mpg (dependent variable)   
X<sub>1</sub> = vehicle length (predictor/independent variable),    
X<sub>2</sub> = vehicle weight (predictor/independent variable),    
X<sub>3</sub> = spoiler angle (predictor/independent variable),    
X<sub>4</sub> = ground clearance (predictor/independent variable),    
X<sub>5</sub> = AWD (predictor/independent variable),    
c = random variable representing the error or residuals.   
- The coefficient values for each predictor variable are the slope estimates. It can be observed that **slope estimates are non zero**, though some are close to zero. If we consider the (predictor variable of) vehicle length: Given that other variables are held constant, for a unit increase in vehicle length, mpg increases over 6 times. 
- The negative sign of the coefficient of AWD tells that there is a negative correlation between mpg and AWD.

### Summary of Regression

<img src="images/lm_summary.png" width="500" />
- The p-values for the coefficients indicate whether these relationships are statistically significant.





Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Is the slope of the linear model considered to be zero? Why or why not?

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?


## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

## T-Tests on Suspension Coils

summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.

## Study Design: MechaCar vs Competition

short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?
