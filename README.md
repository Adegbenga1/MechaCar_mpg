# MechaCar_Statistical_Analysis





![image](https://user-images.githubusercontent.com/70987568/136718493-9bd53b9f-5d49-488b-8da5-35d210f22c03.png)
Call:
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
    ground_clearance + AWD, data = MechaCar_mpg)

Coefficients:
     (Intercept)    vehicle_length    vehicle_weight     spoiler_angle  ground_clearance               AWD  
      -1.040e+02         6.267e+00         1.245e-03         6.877e-02         3.546e+00        -3.411e+00  

> summary(lm(formula =  mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)) #generate multiple linear regression model

Call:
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
    ground_clearance + AWD, data = MechaCar_mpg)

Residuals:
     Min       1Q   Median       3Q      Max 
-19.4701  -4.4994  -0.0692   5.4433  18.5849 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

> # Deliverable 2: Create Visualizations for the Trip Analysis
> Sus_Coil <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import Suspension_Coil dataset
> head(Sus_Coil) # dataFrame of suspension coils
  VehicleID Manufacturing_Lot  PSI
1    V40858              Lot1 1499
2    V40607              Lot1 1500
3    V31443              Lot1 1500
4     V6004              Lot1 1500
5     V7000              Lot1 1501
6    V17344              Lot1 1501
> Total_summary <- Sus_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
> head(Total_summary )
     Mean Median Variance       SD
1 1498.78   1500 62.29356 7.892627
> lot_summary  <- Sus_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), .groups = 'keep') #create summary table
> lot_summaryStat <- Sus_Coil %>% group_by( Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI), Variance_PSI=var(PSI), SD_PSI=sd(PSI), .groups = 'keep')
## Deliverable 3: t.tests on suspension coils

## Total Suspension Coil T-Test:

> t.test((Sus_Coil$PSI),mu=1500)

	One Sample t-test
data:  (Sus_Coil$PSI)
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78 
  
  
psi_lot1<- subset(Sus_Coil,Manufacturing_Lot=="Lot1")#get subset of manufacturing lot 1
psi_lot2<- subset(Sus_Coil,Manufacturing_Lot=="Lot2")#get subset of manufacturing lot 2
psi_lot3<- subset(Sus_Coil,Manufacturing_Lot=="Lot3")#get subset of manufacturing lot 3
t.test((psi_lot1$PSI),mu=1500) # compare population versus Lot 1 population means

## Lot1 Suspension Coil T-Test:
	One Sample t-test
data:  (psi_lot1$PSI)
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.719 1500.281
sample estimates:
mean of x 
     1500 

## Lot2 Suspension Coil T-Test:
t.test((psi_lot2$PSI),mu=1500) # compare population versus Lot 2 population means
	One Sample t-test
data:  (psi_lot2$PSI)
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.423 1500.977
sample estimates:
mean of x 
   1500.2 

##  Lot2 Suspension Coil T-Test:
t.test((psi_lot3$PSI),mu=1500) # compare population versus Lot 3 population means
	One Sample t-test
data:  (psi_lot3$PSI)
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1492.431 1499.849
sample estimates:
mean of x 
  1496.14 
