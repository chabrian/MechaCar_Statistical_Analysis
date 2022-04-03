library(dplyr)

# DELIVERABLE 1

# load in data
mpg_df <- read.csv('Resources/MechaCar_mpg.csv', stringsAsFactors = F)

#perform linear model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df)

# generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df))

# DELIVERABLE 2

# load in data
suspension_coil_table <- read.csv('Resources/Suspension_Coil.csv', stringsAsFactors = F)

# create the total summary table
total_summary <- suspension_coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# create the lot summary table
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups="keep")
