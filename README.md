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

## T-Tests on Suspension Coils
briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary. 

## Study Design: MechaCar vs Competition
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating. 

- What metric or metrics are you going to test?
- What is the null hypothesis or alternative hypothesis?
- What statistical test would you use to test the hypothesis? And why?
- What data is needed to run the statistical test?
