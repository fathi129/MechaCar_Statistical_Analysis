# MechaCar_Statistical_Analysis
The analysis aims to offer insights on the MechaCar's production to help the manufacturing team.

## Overview of the Analysis
The AutoRU's company want their data analyst team to perform retrospective analysis of historical data,analytical verification and validation of current automative specifications and study design of future product testing.The analysis should contain a quantitative metric and clear interpretation of the results in order to keep the management happy.The statistical tests are performed using R.Using R we can calculate the summary statistics of different variables,visualization of different detects and we can provide interpretation based on the statistical test results.we need to use critical thinking skills,hypothesis and analysis workflow in order to make AUTORU's manufacturing process even better.

## Purpose of the Analysis
In order to conduct the analysis, we are using two datsets containing information related to the miles per gallon and the suspension coils of the MechaCar.
The miles per galloon dataset contains the following columns vehicle_length,vehicle_weight,spoiler_angle,ground_clearance,AWD and mpg.Where as the suspension coils dataset contains VehicleID,Manufacturing_Lot and PSI columns.We are using R programming and its dplyr library to perform the statistical analysis.

## Resources Used
*DataSources*: [MechaCar_mpg.csv](https://github.com/fathi129/MechaCar_Statistical_Analysis/blob/master/Resources/MechaCar_mpg.csv), [Suspension_Coil.csv](https://github.com/fathi129/MechaCar_Statistical_Analysis/blob/master/Resources/Suspension_Coil.csv)<br>
*Software used*: R studio,dplyr Library.<br>
*Language*: R <br>

## Deliverable 1: Linear Regression to Predict MPG
The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. we willndesign a linear model that predicts the mpg of MechaCar prototypes using several variables from the given dataset. 
we need to download and place the MechaCar_mpg.csv file,in the active directory for our R session,load the dplyr package using library() function.
Import and read in the MechaCar_mpg.csv file as a dataframe.we perform linear regression using the lm() function. In the lm() function, we need to pass in all six variables (i.e., columns), and add the dataframe we created as data parameter.
<img src = "https://github.com/fathi129/MechaCar_Statistical_Analysis/blob/master/Results/MechaCar_readfile.png"  width = 800><br>

Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
Save your MechaCarChallenge.RScript file to your GitHub repository. 



Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Is the slope of the linear model considered to be zero? Why or why not?
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

## Deliverable 2: Create Visualizations for the Trip Analysis 
The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Using your knowledge of R, you’ll create a summary statistics table to show:

The suspension coil’s PSI continuous variable across all manufacturing lots
The following PSI metrics for each lot: mean, median, variance, and standard deviation.
Then, in the README.md, you’ll briefly detail and interpret the suspension coil summary statistics.
Download the Suspension_Coil.csv file, and place it in the active directory for your R session.
In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

Your total_summary dataframe should look like this:
<img src = ""  width = 800><br>


Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
Your lot_summary dataframe should look like this:
<img src = ""  width = 800><br>

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?


