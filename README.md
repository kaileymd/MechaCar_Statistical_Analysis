# MechaCar Production Challenges
MechaCar is a new car prototype experiencing manufacturing errors. This analysis will attempt to determine what variables are impacting MechaCar's miles per gallon, suspension coils, and if the different manufacturing sites produce results statistically different from each other/the goal.

## Linear Regression to Predict MPG

![MLR_results.png](https://github.com/kaileymd/MechaCar_Statistical_Analysis/blob/main/images/MLR_results.png)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - Assuming a 95% confidence level, there are three values that have such small p-values as to have a non-random impact on MechaCar's miles per gallon: the intercept, vehicle length, and ground clearance. In other words, this linear regression shows vehicle length and ground clearance have the most impact on MechaCar's mpg.

- Is the slope of the linear model considered to be zero? Why or why not?
  - The slope is not considered zero since the variables have non-zero coefficients.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  - An R-squared value of 71% indicates that this model has a good level for prediction, but for a physical process R-squared could be higher to indicate an even higher prediction ability. As it stands, this model could be leaving out statistically significant independent variables and I would recommend more analysis.
    
## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

### Summary Statistics for All Suspension Coils:
![total_summary.png](https://github.com/kaileymd/MechaCar_Statistical_Analysis/blob/main/images/total_summary.png)

### Summary Statistics for Suspension Coils by Manufacturing Lot:

![lot_summary.png](https://github.com/kaileymd/MechaCar_Statistical_Analysis/blob/main/images/lot_summary.png)

- Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
  - While the variance is low enough across all manufacturing lots when they are looked at together, when broken apart Lot 3 stands out as the only lot with a PSI variance over 100.

## T-Tests on Suspension Coils

### All Suspension Coils Test
!(t-test.png)[https://github.com/kaileymd/MechaCar_Statistical_Analysis/blob/main/images/t-test.png]

The results from all manufacturing lots shows a probable statistical significance, but not above a 95% confidence level (as the p-level of 6% shows) which would be the level at which such information would become actionable.

### Lot 1 Test
!(Lot1_test.png)[https://github.com/kaileymd/MechaCar_Statistical_Analysis/blob/main/images/Lot1_test.png]
Lot 1's PSI is 1500 - an exact match to the goal PSI for MechaCar. This is show by the p-value of 1, or 100%, which indicates an exact match between the manufacturing lot's mean and the comparison value.

### Lot 2 Test
!(Lot2_test.png)[https://github.com/kaileymd/MechaCar_Statistical_Analysis/blob/main/images/Lot2_test.png]
Lot 2's p-value is 60%, which indicates a high level of overlap between the values in Lot 2 and the comparison value of 1500.

### Lot 3 Test
!(Lot3_test.png)[https://github.com/kaileymd/MechaCar_Statistical_Analysis/blob/main/images/Lot3_test.png]
Lot 3's p-value is 4%, which indicates a non-random chance that Lot 3's PSI is different to a statistically significant degree, above a 95% confidence level.

## Study Design: MechaCar vs Competition
To determine how MechaCar performs against the competition, I would look at the relationship between cost, mpg, maintenance cost, and reported sales of similar styles of car. With this information, we could calculate the overall cost of a car - or the value of it to a consumer. The goal would be to establish if a cheaper overall car has higher sales or not and see how MechaCar fits into the line-up.

The null hypothesis would state that there is no relationship between these variables. The alternate hypothesis is that there is a non-random relationship between them. To determine the relationship between these variables, I would conduct a multiple linear regression test to determine the p-values of each variable, and therefore the statistical likelihood of a non-random relationship. In the event that the null hypothesis is true, I would investigate other variables in relationship to the reported sales to determine what element of a car is most important in the sales of cars we are comparing against.
