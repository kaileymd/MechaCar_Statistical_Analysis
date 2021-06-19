library(dplyr)
car_data <- read.csv("MechaCar_mpg.csv")

#Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_data)
summary(lm(mpg ~ vehicle_length +vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_data))

susp_coils <- read.csv("Suspension_Coil.csv")

#Create suspension coil summary table
total_summary <- susp_coils %>% summarize(Mean_PSI=mean(PSI), Med_PSI=median(PSI), Variance=var(PSI), SD_PSI=sd(PSI))
lot_summary <- susp_coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Med_PSI=median(PSI), Variance=var(PSI), SD_PSI=sd(PSI))

#Write a T Test - is manufactured PSI statistically different from pop mean?
t.test(susp_coils$PSI, mu=1500)

#Lot T Tests
t.test(subset(susp_coils, Manufacturing_Lot == 'Lot1', PSI), mu=1500) #Lot 1
t.test(subset(susp_coils, Manufacturing_Lot == 'Lot2', PSI), mu=1500) #Lot 2
t.test(subset(susp_coils, Manufacturing_Lot == 'Lot3', PSI), mu=1500) #Lot 3
