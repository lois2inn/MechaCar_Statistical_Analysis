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

- The MechaCar dataset contains 50 prototype MechaCars, which were produced using multiple design specifications to identify ideal vehicle performance.
- Multiple regression with R is performed to predict the MPG of MechaCar given certain values of vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance.

### Multiple Regression Model

<img src="images/lm_coef.png" width="600" />

- With the coefficients generated, the linear model for this scenario can be as below:     
**Y = -0.0104 + 6.267 X<sub>1</sub> + 0.0012 X<sub>2</sub> + 0.0688 X<sub>3</sub> + 3.546 X<sub>4</sub> - 3.411 X<sub>5</sub> + c**     
where Y = mpg (dependent variable)   
X<sub>1</sub> = vehicle length (predictor/independent variable),    
X<sub>2</sub> = vehicle weight (predictor/independent variable),    
X<sub>3</sub> = spoiler angle (predictor/independent variable),    
X<sub>4</sub> = ground clearance (predictor/independent variable),    
X<sub>5</sub> = AWD (predictor/independent variable),    
c = random variable representing the error or residuals.   

### Summary of Regression

<img src="images/lm_summary.png" width="700" />

- From the values of Residuals, it can be observed that the median (=-0.0692) is about centered around zero. This tells that residuals are somewhat symmetrical and that our **model is predicting evenly** at both the high (absolute value: |18.58|) and low (absolute value: |-19.47|) ends of the dataset. This implies a normal distribution. 
- From the Coefficients section, it can be observed that vehicle length and ground clearance have large t-statistic and their corresponding standard errors are small. Larger t-statistic confirms that corresponding coefficient is not zero. 
- The p-values for the coefficients indicate whether these relationships are statistically significant(the confidence that coefficients are not zero). A 95% level of confidence was predetermined, meaning the p-value should be compared to alpha = .05 level of significance to verify if statistically significant. The strongest contributor of non-random variance seems to be the vehicle length with a p-value of 2.60e-12. The other strong contributor of non-random variance is the ground clearance with a p-value of 5.21e-8.
- The coefficient values for each predictor variable are the slope estimates of linear model. It can be observed that **slope estimates are non zero**, though some are close to zero. If we consider the (predictor variable of) vehicle length: Given that other variables are held constant, for a unit increase in vehicle length, mpg increases over 6 times. The negative sign of the coefficient of AWD tells that there is a negative correlation between mpg and AWD.
- In summary, **vehicle length and ground clearance variables represent non-random amounts of variance** as applied to the mpg values. 
- The slope of the linear model is not zero. This can be seen in coefficients that contain significant non-zero values (vehicle length, ground clearance, and AWD), and the p-values are less than the significance level of p=0.05.
- Since R-squared gives the percentage of variance, it can be interpreted that **71.49% of variation in mpg is explained by all the 5 predictors combined**. This is a high percentage of predictability and concludes that roughly 29% of variance in mpg is unexplained.

## Summary Statistics on Suspension Coils

In the Suspension_Coil dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. It is also specified that the population mean is 1500 pounds per square inch.

### PSI Summary across all Manufacturing Lots
- Below is the PSI summary statistics of all of the manufacturing lots. The mean of all the lots combined is 1498.78, this is close to the population mean (1500).
<img src="images/all_lots.png" width="500" />

### PSI Summary for each Manufacturing Lot
- The PSI summary statistics per lot are shown below. Each manufacturing lot has a sample size of 50.
- The mean of all lots combined is similar when compared to the mean of each individual lot.
- Lot 1 has the mean same as that of population at 1500 and similar to mean of PSI across all lots.
- Lot 2 has mean similar to population mean and mean across all lots.
<img src="images/per_lot.png" width="600" />

- Though the mean of Lot 3's distribution is similar to that of all lots, it shows significant deviation of psi values from standard compared to Lot 1 and Lot 2. That means that Lot 3 has more data spread out from its mean as confirmed by its large variance value.

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 PSI. 
**The variance for the total manufacturing lot is within the expected design specifications** of staying under 100 PSI (62 < 100), but we can see that there are clearly big problems in Lot 3 with a variance of 170 PSI. **Lot 3 does not meet the maximum variance requirement** while Lot 1 and Lot 2 comply.


## T-Tests on Suspension Coils

T-tests are performed to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

### T-test for all lots
- When a t-test is run across all manufacturing lots combined, the generated p-value of 0.6028 is compared with alpha = 0.05 to check for statistical significance. Since p-value is greater than significance level, **the total manufacturing lot is not statistically significant from the normal distribution** and normality can be assumed. The mean falls within the 95% confidence interval.
<img src="images/t-test_all.png" width="500" />

### T-test for Lot 1
- The t-test performed for Lot 1 shows p-value of 1. When compared with alpha(=0.05), p-value is more than significance level, it can be concluded that **Lot 1 is not statistically significant from the normal distribution** and normality can be assumed. The mean falls within the 95% confidence interval.
<img src="images/t-test_1.png" width="700" />

### T-test for Lot 2
- The t-test for Lot 2 shows p-value = .6072. When compared with alpha = 0.05, p-value is greater than alpha, which means **Lot 2 is not statistically significant from the normal distribution** and normality can be assumed. The mean falls within the 95% confidence interval.
<img src="images/t-test_2.png" width="700" />

### T-test for Lot 3
- The t-test for Lot 3 shows p-value = .04168. Since alpha = 0.05, p-value is less than alpha, which means **Lot 3 is statistically significant from the normal distribution and normality cannot be assumed**. However, the mean falls within the 95% confidence interval.
<img src="images/t-test_3.png" width="700" />

If I would have started with the null hypothesis that the mean of all manufacturing lots combined has no effect on population mean, I would be right to say so based on the above summary. The same hypothesis holds true for Lot 1 and Lot 2. However, I would fail to prove that the mean of Lot 3 has no effect on population mean.

## Study Design: MechaCar vs Competition

To compare the performance of MechaCar with its competition, a consumer could consider the following metrics:
- Cost
- Horsepower
- Safety Rating
- City and highway fuel efficiency
- Engine type
- Drive Train (AWD)
- Average Carrying Capacity (cu Ft)

### Metric to test
To study statistically significant differences of MechaCar's performance vs. competition, I would choose average carrying capacity.

### Null and Alternate Hypothesis
Null Hypothesis (H<sub>0</sub>): The average carrying capacity (expressed in cubic feet) of MechaCar's prototype is similar to competitor's vehicle in the same vehicle class.    
Alternate Hypothesis (H<sub>a</sub>):The average carrying capacity of MechaCar's prototype is above or below that of competitor's vehicle.

### Statistical Test used
To determine statistical significance, two-sample t-Tests can be performed.     
Analytical question: Is there a statistical difference between the distribution means of average carrying capacity from the two samples (MechaCar and its competitor)?

### Data needed
In order to run these statistical tests, we would need cubic space data from the MechaCar prototypes and its competitors.

