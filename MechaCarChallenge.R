#Step3 : Use the library() function to load the dplyr package.
library(dplyr)

#Deliverable 1

#Step4 : Import and read in the MechaCar_mpg.csv file as a dataframe.
mecha_car <- read.csv(file="MechaCar_mpg.csv",check.names = F, stringsAsFactors = F)

#Step5 : Perform linear regression using the lm() function. 
#In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car))

#p-value: 5.35e-11     Adjusted R-squared:  0.6825 


# Deliverable 2 

# Step2 : import and read in the Suspension_Coil.csv file as a table.
susp_coil <- read.csv(file = "Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

#Step3 : Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column

total_summary <- susp_coil %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

#Step4 : Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

lot_summary <- susp_coil %>% group_by(Manufacturing_Lot) %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))




# Deliverable 3

#Step 1 :  In your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.

t.test(susp_coil$PSI, mu=1500)

#Step 2 : Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
Lot1 = subset(susp_coil, Manufacturing_Lot == 'Lot1')
Lot2 = subset(susp_coil, Manufacturing_Lot == 'Lot2')
Lot3 = subset(susp_coil, Manufacturing_Lot == 'Lot3')

t.test(Lot1$PSI, mu=1500)
# p-value = 1

t.test(Lot2$PSI, mu=1500)
#p-value = 0.6072

t.test(Lot3$PSI, mu=1500)
#p-value 0.04168