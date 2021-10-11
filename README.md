# MechaCar_Statistical_Analysis

![image](https://user-images.githubusercontent.com/70987568/136720605-2216b109-05ea-4f49-8a11-521dd46e8b5f.png)


![image](https://user-images.githubusercontent.com/70987568/136718493-9bd53b9f-5d49-488b-8da5-35d210f22c03.png)

## Total_summary 

Mean               Median             Variance               SD

1498.78            1500               62.29356               7.892627

## Deliverable 3: t.tests on suspension coils

## Total Suspension Coil T-Test:

t.test((Sus_Coil$PSI),mu=1500)
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78 
 
## Lot1 Suspension Coil T-Test:

t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.719 1500.281
sample estimates:
mean of x 
     1500 
     
## Result for LOT 1

The results of the t-test to test if the PSI mean for Lot1 is statistically different from the population mean of 1,500 pounds
per square inch show that, at a 95% confidence level, the two means are not statistically different. 
The p-value of 1 shows that the mean for Lot1 is exactly the same same as the population mean of 1500 PSI.

## Lot2 Suspension Coil T-Test:

t.test((psi_lot2$PSI),mu=1500) # compare population versus Lot 2 population means
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.423 1500.977
sample estimates:
mean of x 
   1500.2 
## Result for LOT 2 

The t-test showed that PSI mean for Lot2 is statistically different from the population mean of 1,500 
pounds per square inch show that, at a 95% confidence level, the two means are not statistically 
different. Because the p-value of 0.6072 is higher than the critical value of 0.05,we accept null
hypothesis because no difference between the means of the PSI for the population and Lot2. 


##  Lot3 Suspension Coil T-Test:

t.test((psi_lot3$PSI),mu=1500) # compare population versus Lot 3 population means
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1492.431 1499.849
sample estimates:
mean of x 
  1496.14 
## Result for Lot 3 
PSI mean for Lot3 is statistically different from the population mean of 1,500 pounds per square inch show that,
at a 95% confidence level, the two means are statistically different. The p-value of 0.04168 is lower than the
critical value of 0.05, the null hypothesis should be rejected in that there is a difference between the means 
of the PSI for the population and Lot3 and the true mean is not equal to 1500. 
The means within the 95% confidence range are between 1492.431 and 1499.849 PSI.
