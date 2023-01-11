#loads dlpyr library
library(dplyr)

#imports measurements.csv data into script
data <- read.csv("C:\\Users\\Caleb\\Desktop\\Winter 2023 Stats\\measurements.csv")


#data set is overwritten and mutated to include a new column with volume, calculated through 3.14*r^2*h
data <- data %>%
  mutate(Volume = pi * (data$Limb_Width/2)^2 * data$Limb_Height)

#measurements.csv is updated with new column
write.csv(data, "measurements.csv",row.names = F)
View(data)

