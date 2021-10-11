install.packages("rjson")
library("rjson")
library(tidyverse)

# Deliverable 1: Linear Regression to Predict MPG
MechaCar_mpg <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import MechaCar_mpg  dataset
head(MechaCar_mpg)
# Linear model of MPG
lm(formula =  mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg) #generate multiple linear regression model
summary(lm(formula =  mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)) #generate multiple linear regression model

# Deliverable 2: Create Visualizations for the Trip Analysis
Sus_Coil <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import Suspension_Coil dataset
head(Sus_Coil) # dataFrame of suspension coils


Total_summary <- Sus_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
head(Total_summary )




# create a lot summary dataFrame that has the mean, median, variance, and standard deviation for each manufacturing lot

lot_summary  <- Sus_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), .groups = 'keep') #create summary table
lot_summaryStat <- Sus_Coil %>% group_by( Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI), Variance_PSI=var(PSI), SD_PSI=sd(PSI), .groups = 'keep')

# create a lot summary dataFrame that has the mean, median, variance, and standard deviation for each manufacturing lot
lot_summary  <- Sus_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), .groups = 'keep') #create summary table
lot_summaryStat <- Sus_Coil %>% group_by( Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI), Variance_PSI=var(PSI), SD_PSI=sd(PSI), .groups = 'keep')


# Deliverable 3: t.tests on suspension coils
t.test((Sus_Coil$PSI),mu=1500)
psi_lot1<- subset(Sus_Coil,Manufacturing_Lot=="Lot1")#get subset of manufacturing lot 1
psi_lot2<- subset(Sus_Coil,Manufacturing_Lot=="Lot2")#get subset of manufacturing lot 2
psi_lot3<- subset(Sus_Coil,Manufacturing_Lot=="Lot3")#get subset of manufacturing lot 3
t.test((psi_lot1$PSI),mu=1500) # compare population versus Lot 1 population means
t.test((psi_lot2$PSI),mu=1500) # compare population versus Lot 2 population means
t.test((psi_lot3$PSI),mu=1500) # compare population versus Lot 3 population means

















