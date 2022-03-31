
carData <- read.csv("C:/OlufemiProjectWork/AnalysisProject/Statistics&RChallenge/MechaCar_Statistical_Analysis/Resources") 
Machacar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
View(Machacar)
library(dplyr)
model <- lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,Machacar) #create linear model
names(Machacar)
summary(model)

suscoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
suscoil
summary(suscoil$PSI)
