#code for organism, samples five names 100 times and has the ability to replace

#set a seed for reproducibility 
set.seed(7127)

Organism <- sample(c("Homo sapiens","Homo erectus","Homo neanderthalensis","Denisova hominins","Homo luzonensis"),100,replace = T)
Organism

#code for limb width, random normal distribution with mean of 10 and sd of 2
Limb_Width <- abs(rnorm(100, mean = 10, sd = 2))
Limb_Width

#code for limb height, random normal distribution with mean of 79 and sd of 15
Limb_Height <- abs(rnorm(100, mean = 79, sd = 15))
Limb_Height

#code for observer, samples three names 100 times and has the ability to replace 
Observer <- sample(c("Caleb P","Kennedy R","Louie Y"),100,replace = T)
Observer

#combines all vectors into one data frame
measurements <- data.frame(Organism,Limb_Width,Limb_Height,Observer)
measurements

#writes the data frame to a CSV file
write.csv(measurements, "C:\\Users\\Caleb\\Desktop\\Winter 2023 Stats\\measurements.csv",row.names = F)
View(data)