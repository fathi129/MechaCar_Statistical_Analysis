# MechaCar_Statistical_Analysis
The analysis aims to offer insights into MechaCar's production to help the manufacturing team.

## Overview of the Analysis
The AutoRU's company wants its data analyst team to perform a retrospective analysis of historical data, analytical verification, and validation of current automotive specifications and study the design of future product testing. The analysis should contain a quantitative metric and a clear interpretation of the results to keep the management happy. The statistical tests are performed using R.Using R; we can calculate the summary statistics of different variables, visualize other detect, and provide interpretation based on the statistical test results. We need to use critical thinking skills,hypothesis and analysis workflow to improve AUTORU's manufacturing process.

## Purpose of the Analysis
To conduct the analysis, we are using two datasets containing information related to the miles per gallon and the suspension coils of the MechaCar. The miles per galloon dataset includes vehicle_length,vehicle_weight,spoiler_angle,ground_clearance, AWD and mpg. Whereas the suspension coils dataset contains VehicleID, Manufacturing_Lot and PSI columns. We are using R programming and its dplyr library to perform the statistical analysis.


## Resources Used
*DataSources*: [MechaCar_mpg.csv](https://github.com/fathi129/MechaCar_Statistical_Analysis/blob/master/Resources/MechaCar_mpg.csv), [Suspension_Coil.csv](https://github.com/fathi129/MechaCar_Statistical_Analysis/blob/master/Resources/Suspension_Coil.csv)<br>
*Software used*: R studio,dplyr Library.<br>
*Language*: R <br>

## Deliverable 1: Linear Regression to Predict MPG
The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Various metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. We will design a linear model that predicts the mpg of MechaCar prototypes using several variables from the given dataset. We need to download and place the MechaCar_mpg.csv file in the active directory for our R session, load the dplyr package using library() function. Import and read in the MechaCar_mpg.csv file as a data frame. we perform linear regression using the lm() function. In the lm() function, we need to pass in all six variables (i.e., columns) and add the data frame we created as a data parameter. Using the summary() function, we determine the linear regression model's p-value and the r-squared value.<br>

<img src = "https://github.com/fathi129/MechaCar_Statistical_Analysis/blob/master/Results/vehicle_df.png"  width = 900><br>
When we execute the script, we get the following linear regression results; The data frame looks like this.<br>
<img src = "https://github.com/fathi129/MechaCar_Statistical_Analysis/blob/master/Results/MechaCar_df.png"  width = 800><br>
<img src = "https://github.com/fathi129/MechaCar_Statistical_Analysis/blob/master/Results/linear_result.png"  width = 800><br>

## Summary of Linear Regression Model
In this distribution, we can see that the residuals have a minimum value of -19.4 and a maximum value of 18.5 where as the median is -0.07 which is close to zero.<br>
- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?<br>
 Two variables provided a non-random amount of variance: The vehicle length and the ground_clearance. Both of these have an extremely small p-value of 2.6x10-12 and 5.21x10-8, respectively, meaning they had a high significance level. It also should be noted that the intercept had a high significance level, meaning that other factors are still contributing to the variance of the miles per gallon of the MechaCar.<br>  
- Is the slope of the linear model considered to be zero? Why or why not?<br>
The slope of the linear model can not be considered to be zero, as the p-value of 5.35x10-11, is lower than even an extreme level of significance, and thus the null hypothesis must be rejected. This means that the relationship between our variables and the miles per gallon is subject to more than random chance.<br>
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?<br>
The critical parameter of whether the linear model predicts the mpg of the MechaCar is the r-squared value. In this case, it is at 0.7149 means,this model is 71% accurate.Although there are still unconsidered factors, this model does predict the mpg of the MechaCar prototype with some relative effectiveness.

## Deliverable 2: Create Visualizations for the Trip Analysis 
The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Using R, we will create a summary statistics table to show the suspension coil's PSI continuous variable across all manufacturing lots. The following PSI metrics for each lot: mean, median, variance, and standard deviation. The Suspension_Coil.csv file is downloaded and placed in the active directory for our R session. Import and read in the Suspension_Coil.csv file as a table. The total_summary data frame is created using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column.<br>
<img src = "https://github.com/fathi129/MechaCar_Statistical_Analysis/blob/master/Results/suspension_read.png"  width = 900><br>
<img src = "https://github.com/fathi129/MechaCar_Statistical_Analysis/blob/master/Results/Coils_df.png"  width = 400><br>
The total_summary data frame and the results look like this:<br>
<img src = "https://github.com/fathi129/MechaCar_Statistical_Analysis/blob/master/Results/total_summary.png"  width = 900><br><br>
<img src = "https://github.com/fathi129/MechaCar_Statistical_Analysis/blob/master/Results/tot_summary.png"  width = 500><br>
A lot_summary data frame is created using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column. The lot_summary data frame should look like this below:<br><br>
<img src = "https://github.com/fathi129/MechaCar_Statistical_Analysis/blob/master/Results/lot_summary.png"  width = 900><br>
<img src = "https://github.com/fathi129/MechaCar_Statistical_Analysis/blob/master/Results/Lot_Summary_result.png"  width = 500><br>

## Summary statistics of the suspension coils
The summary statistics of all the manufacturing lots has a mean of 1498.78 and a median of 1500.
- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
The variance for the total manufacturing lot is 62 < 100, which is within the expected design specifications of staying under 100 PSI. However, when reviewing the data by Lot number, Lot 3 is a large contributing factor to high variance. Lot 3 shows a variance of 170 > 100 and does not meet the design specifications. Lot 1 and Lot 2 have significantly lower variance, 1 and 7, respectively.

## Deliverable 3: T-Tests on Suspension Coils 
Using R, perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. In our R script, we will use t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.we will write three more R Scripts using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.<br>

<img src = "https://github.com/fathi129/MechaCar_Statistical_Analysis/blob/master/Results/ttest_RScript.png"  width = 600><br>
### T-tests for all manufacturing lots
The p-value = .6028,which is greater than .05,we cannot reject the null hypothesis.which means the total manufacturing lot is not statistically significant from the normal distribution, and normality can be assumed. The mean falls within the 95% confidence interval.<br> 
<img src = "https://github.com/fathi129/MechaCar_Statistical_Analysis/blob/master/Results/ttest_result_total.png"  width = 500><br>

### T-tests for all Lot 1
The p-value = 1,which is greater than .05,we cannot reject the null hypothesis.which means lot1 is not statistically significant from the normal distribution, and normality can be assumed. The mean falls within the 95% confidence interval.<br>
<img src = "https://github.com/fathi129/MechaCar_Statistical_Analysis/blob/master/Results/lot1_result.png"  width = 500><br>

### T-tests for all Lot 2
The p-value = 0.6072,which is greater than .05,we cannot reject the null hypothesis.which means lot2 is not statistically significant from the normal distribution, and normality can be assumed. The mean falls within the 95% confidence interval.<br>
<img src = "https://github.com/fathi129/MechaCar_Statistical_Analysis/blob/master/Results/lot2_result.png"  width = 500><br>

### T-tests for all Lot 3
The p-value = .04168,which is less than .05,we can reject the null hypothesis.which means lot3 is statistically significant from the normal distribution, and normality cannot be assumed.However, the mean falls within the 95% confidence interval.<br>
<img src = "https://github.com/fathi129/MechaCar_Statistical_Analysis/blob/master/Results/lot3_result.png"  width = 500><br>

## Summary of the T-Test results on Suspension Coils
By using a significance level of 95%, meaning that 95% of the time, this test's results would be true, I tested to see if any of the four groups had a statistical difference from the mean of 1,500 PSI. After running the tests, all three p-values were much greater than .05, meaning that I would fail to reject that there is a statistical difference between the three groups and the population mean. Still, only the lot3 has a p-value less than 0.05, but the mean falls in the 95% confident level.<br>

## Study Design: MechaCar vs Competition. 
The metrics that would interest customers for MechaCar performance against the competitors are cost, city or highway fuel efficiency, horsepower, maintenance cost, or safety rating.

- What metric or metrics are you going to test?<br>
The metrics which I want to test are maintenance cost and fuel efficiency.<br>
- What is the null hypothesis or alternative hypothesis?<br>
Null Hypothesis is that cars of the same type, like sedans, have the same fuel efficiency. Alternative Hypothesis is the same type of car does not have the same fuel efficiency. The null hypothesis is that the small cars have less maintenance cost than big cars.The Alternative hypothesis is it is not so.<br>
- What statistical test would you use to test the hypothesis? And why?<br>
I would use an Sample t tests, ANOVA test to complete this analysis for checking the maintenance cost and fuel efficiencies. Also, I would use the ggplot2 library to plot boxplots that show how different cars have different maintenance costs and fuel efficiencies.<br>
- What data is needed to run the statistical test?<br>
I would need maintenance cost and fuel efficiency data from 50 individual cars to create a sample data size for each car in the class type. So that we can perform the statistical test as a whole and statistical test for different sets and compare the results.<br>
