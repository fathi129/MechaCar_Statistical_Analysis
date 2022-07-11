library(dplyr)
vehicle_df<-read.csv("Resources/MechaCar_mpg.csv" ,stringsAsFactors = FALSE, check.names = FALSE)
head(vehicle_df)

#Linear Regression
model = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = vehicle_df)
summary(model)

# Summary Statistics on Suspension Coils
suspensions_df<-read.csv("Resources/Suspension_Coil.csv" ,stringsAsFactors = FALSE, check.names = FALSE)
head(suspensions_df)

# Total_summary
total_summary = suspensions_df %>% 
                summarize(Mean=mean(PSI),Median = median(PSI),Variance = var(PSI),SD=sd(PSI),.groups = 'keep')
total_summary

# Lot_Summary
lot_summary <- suspensions_df %>% group_by(Manufacturing_Lot) %>% 
                    summarize(Mean=mean(PSI),Median = median(PSI),Variance = var(PSI),SD=sd(PSI),.groups = 'keep')
lot_summary

# T-Tests on Suspension Coils
t.test(suspensions_df$PSI,mu=1500)

lot1 = subset(suspensions_df,Manufacturing_Lot == "Lot1")
t.test(lot1$PSI,mu=1500)
lot2 = subset(suspensions_df,Manufacturing_Lot == "Lot2")
t.test(lot2$PSI,mu=1500)
lot3 = subset(suspensions_df,Manufacturing_Lot == "Lot3")
t.test(lot3$PSI,mu=1500)

# OR
# t.test(subset(suspensions_df$PSI,suspensions_df$Manufacturing_Lot=="Lot1"),mu=1500)
#t.test(subset(suspensions_df$PSI,suspensions_df$Manufacturing_Lot=="Lot2"),mu=1500)
#t.test(subset(suspensions_df$PSI,suspensions_df$Manufacturing_Lot=="Lot3"),mu=1500)






