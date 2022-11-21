##### DELIVERABLE 1 #####

# Load the dplyr library
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe.
mechaCar_mpg <- read.csv(file = "MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

# Show first few records of dataset
head(mechaCar_mpg)

# Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_mpg)

# Determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_mpg))
# ground_clearance, vehicle length (as well as intercept value) have a significant impact on vehicle mpg


##### DELIVERABLE 2 #####
# Import and read in the Suspension_Coil.csv file as a table.
suspension_coil <- read.csv(file = "Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

# Show the first few rows
head(suspension_coil)

# Create a total_summary dataframe to get the mean, median, variance, and standard deviation 
# of the suspension coil’s PSI column.
total_summary <- suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), StDev = sd(PSI), .groups='keep')

# Create a lot_summary dataframe to group each manufacturing lot 
# by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), StDev = sd(PSI), .groups='keep')


##### DELIVERABLE 3 #####


# One-sample t-test: Is there statistical difference in PSI across all manufacturing lots 
# and the population mean of 1500psi?
t.test(suspension_coil$PSI, mu = 1500)

# t.test() determine if the PSI for each manufacturing lot is statistically different from 
# the population mean of 1,500 pounds per square inch.

# One sample t-test: Is the PSI for manufacturing lot 1 statistically different from 
# the population mean of 1,500 pounds per square inch?
t.test(subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot == 'Lot1'), mu = 1500)

# One sample t-test: Is the PSI for manufacturing lot 2 statistically different from 
# the population mean of 1,500 pounds per square inch?
t.test(subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot == 'Lot2'), mu = 1500)

# One sample t-test: Is the PSI for manufacturing lot 3 statistically different from 
# the population mean of 1,500 pounds per square inch?
t.test(subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot == 'Lot3'), mu = 1500)




