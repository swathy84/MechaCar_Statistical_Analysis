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