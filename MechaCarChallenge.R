library(dplyr)

# load in data
mpg_df <- read.csv('Resources/MechaCar_mpg.csv', stringsAsFactors = F)

#perform linear model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df)

# generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df))
