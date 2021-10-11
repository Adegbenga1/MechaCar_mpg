# MechaCar_Statistical_Analysis

![image](https://user-images.githubusercontent.com/70987568/136720605-2216b109-05ea-4f49-8a11-521dd46e8b5f.png)


![image](https://user-images.githubusercontent.com/70987568/136718493-9bd53b9f-5d49-488b-8da5-35d210f22c03.png)


## Head(Sus_Coil) # dataFrame of suspension coils

VehicleID Manufacturing_Lot  PSI
1    V40858              Lot1 1499
2    V40607              Lot1 1500
3    V31443              Lot1 1500
4     V6004              Lot1 1500
5     V7000              Lot1 1501
6    V17344              Lot1 1501

## Total_summary 

     Mean Median Variance       SD
1 1498.78   1500 62.29356 7.892627

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

## Lot2 Suspension Coil T-Test:

t.test((psi_lot2$PSI),mu=1500) # compare population versus Lot 2 population means
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.423 1500.977
sample estimates:
mean of x 
   1500.2 

##  Lot3 Suspension Coil T-Test:

t.test((psi_lot3$PSI),mu=1500) # compare population versus Lot 3 population means
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1492.431 1499.849
sample estimates:
mean of x 
  1496.14 
