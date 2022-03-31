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

suscoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
suscoil
summary(suscoil$PSI)
