#DELIVERABLE 1

# 3. Use the library() function to load the dplyr package
library(dplyr)\

#4. Import and read in the MechaCar_mpg.csv file as a dataframe.
library(tidyverse)
carData <- read.csv("C:/OlufemiProjectWork/AnalysisProject/Statistics&RChallenge/MechaCar_Statistical_Analysis/Resources") 
Machacar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
View(Machacar)
#library(dplyr)

#5. Perform linear regression using the lm() function
model <- lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,Machacar) 
names(Machacar)
summary(model)

6. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,Machacar )) 
summary(model)

DELIVERABLE 2

#2. Import and read in the Suspension_Coil.csv file as a table
suscoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
suscoil
summary(suscoil$PSI)

#3. Create a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- suscoil %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                          Num_Coil=n(), .groups = 'keep') 

#4. Create a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot.                                                                
lot_summary <- suscoil   %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                         Median_PSI=median(PSI),
                                                                         Var_PSI=var(PSI),
                                                                         Std_Dev_PSI=sd(PSI),
                                                                         Num_Coil=n(), .groups = 'keep') 
#box plot: PSI Whole lot
plt1 <- ggplot(suscoil,aes(y=PSI)) #import dataset into ggplot2
plt1 + geom_boxplot() #add boxplot

#box plot: PSI each indicdiual Lot
plt2 <- ggplot(mecha_coil,aes(x=Manufacturing_Lot,y=PSI)) #import dataset into ggplot2
plt2 + geom_boxplot()

DELIVERABLE 3
#1. use t.test() to determine if the PSI across ALL lots is statistically different from the pop. mean of 1,500 PSI.
t.test(suscoil$PSI,mu=1500)

#2. Use t.test() function 3 more times with subset() to determine if PSI for each manufacturing lot is statistically different from the pop. mean of 1,500 PSI
lot1 <- subset(suscoil, Manufacturing_Lot=="Lot1")
lot2 <- subset(suscoil, Manufacturing_Lot=="Lot2")
lot3 <- subset(suscoil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)

# log10 was not used as the data was not skewed and did not need any smoothing


