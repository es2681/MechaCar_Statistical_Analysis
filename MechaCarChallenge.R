library(dplyr)
MechaCar_mpg <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))


Suspension_Coil <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')


t.test(Suspension_Coil$PSI, mu=1500)
t.test(Suspension_Coil$PSI['Lot1'], mu=1500)
t.test(Suspension_Coil$PSI['Lot2'], mu=1500)