## Overview of MechaCar Statistical Analysis

In this project, I have been tasked with reviewing production data for the manufacturing team at AutosRU. The company's newest prototype, the MechaCar, has been experiencing production troubles that require further investigation to help the manufacturing team. Upper management has tasked my team with the following:

1. Perform a multiple linear regression analysis to identify variables that predict the mpg of MechaCar prototypes.
2. Identify key summary statistics on the suspension coil PSI from the manufacturing lots.
3. Run t-tests to determine if any of the manufacturing lots are statistically different from the mean population.
4. Design a statistical study to compare vehicle performance of the MechaCar against vehicles from other manufacturers.

AutosRU has provided two datasets with MechaCar manufacturing characteristics and suspension coil manufacturing characteristics. For this analysis, our team is using RStudio to perform the statistical analysis and determine any deficiencies or opportunities to optimize the manufacturing process for the MechaCar. The full set of resources and analysis results are shown below.

## Resources

- Data Sources: MechaCar_mpg.csv, Suspension_Coil.csv
- Software: R v4.1.3, RStudio 2022.02.0+443 

## Linear Regression to Predict MPG

The first set of results were derived using a linear regression model to determine variables impacting the mpg rating for the MechaCar. The variables plotted against mpg includes vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD.

<img width="638" alt="Linear_Model" src="https://user-images.githubusercontent.com/95327115/161463299-c1bfc3e0-3f4b-46e9-9d4a-4ef382ae6876.png">

Based on the results displayed above, the vehicle length and ground clearance are statistically unlikely to provide random amounts of variance to the linear model. This means that both vehicle length and ground clearance have a significant impact on the mpg rating. The slope of the linear model is not considered to be zero since multiple variables have a statistically significant impact on the dependent variable. Currently the model has an adjusted R-squared value of 0.6825 meaning that the model will accurately predict the mpg given all of the independent variables 68.25% of the time. Overall, this model may effectively predict the mpg of MechaCar prototypes, however, there is overfitting due to multiple variables that are statistically insignificant. The model could be refined to predict mpg more effectively by eliminating the insignificant variables. 

## Summary Statistics on Suspension Coils

The suspension coil summary statistics were derived using mean, median, variance, and standard deviation on the total set and grouped set of data by manufacturing lot as shown in the figures below.

<img width="420" alt="Total_Summary" src="https://user-images.githubusercontent.com/95327115/161463314-8484f353-da7a-4b86-97c9-88bea5f870e9.png">

<img width="615" alt="Lot_Summary" src="https://user-images.githubusercontent.com/95327115/161463332-9d8b16b9-9962-4e4c-b244-b4ed3ef13f06.png">

Based on the summary statistics computed for the suspension coil PSI, the manufacturing lots combined meet the criteria that the variance does not exceed 100 PSI. When divided into Lot 1, 2 and 3, we can see that Lot 1 and 2 still meet this criteria but Lot 3 has a variance of 170 PSI. This means that Lot 3 does not meet the design specification for the variance of the suspension coils. Resources should be allocated to investigate the cause of variance only for Lot 3 since 1 and 2 are producing suspension coils at an acceptable PSI variance. 

## T-Tests on Suspension Coils

T-tests were performed on the suspension coil PSI data to determine the statistical likelihood that true mean of the suspension coil PSI is not equal to the population mean, 1500 PSI. T-tests were developed in RStudios for the combined manufacturing lot and for each lot individually. The results of the tests are shown below.

<img width="501" alt="T-Test_All" src="https://user-images.githubusercontent.com/95327115/161463350-a0dda275-edbd-4fb9-8d86-24908510b4b8.png">

<img width="836" alt="T-Test_Lot1" src="https://user-images.githubusercontent.com/95327115/161463358-bed6c596-c1a6-4a46-9047-9f0840568216.png">

<img width="831" alt="T-Test_Lot2" src="https://user-images.githubusercontent.com/95327115/161463372-e0b3dd95-2ec2-4f61-95a2-38a957a9c45c.png">

<img width="831" alt="T-Test_Lot3" src="https://user-images.githubusercontent.com/95327115/161463387-a8b8f5c7-17b7-4c5e-9fe3-2a4ddb3c6c42.png">

The t-test for the entire sample showed a 95% confidence level that the true mean is somewhere between 1497.507 and 1500.053. Since the p-value is greater than 0.05, the test shows that there is not enough evidence to reject the null hypothesis, and therefore the true mean is equal to 1500 PSI.

The results are similar for Lot 1 and Lot 2. Both lots have a p-value greater than 0.05 and the mean of 1500 is captured inside the 95% confidence interval. Lot 3 fails the null hypothesis since the p-value is less than 0.05. In this case, the alternative hypothesis is proven that the true mean is not equal to 1500. This is further proven since 1500 PSI is not the 95% confidence interval range for the mean of the dataset.

## Study Design: MechaCar vs Competition

In order to quantify the performance of the MechaCar against its competition, we can develop several statistical tests with results that could be in advertising. The metrics we are looking to explore include cost, fuel efficiency, and safety rating. For the statistical test to be successful, the competition must be vehicles similar in size and engine horsepower. The data obtained must also be unbiased and preferably measured by a third-party in order to prevent any mistakes.

For each metric, we would need to gather market data for all similar vehicles. Once a dataset is obtained, we would develop one-sided t-tests to show how the MechaCar performs against the mean of its competitors in cost, fuel efficiency and safety rating. The null hypothesis would state that the MechaCar's cost is greater than or equal to the mean of its competitors. If the null hypothesis is rejected, then the p-value will be less than 0.05, meaning that the MechaCar has a cost less than the mean of its competitors. Similar tests would be performed for fuel efficiency and safety rating. The metric with the smallest p-value could be the focus point of advertisements in order to draw in consumers. 

