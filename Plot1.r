setwd("C:/Project2")
data1 <- readRDS("Source_Classification_Code.rds")
data2 <- readRDS("summarySCC_PM25.rds")

TotalPMUS <- tapply(data2$Emissions, INDEX = data2$year, sum)
TotalPMUS  #To see the various values for each year before representing it

 plot(TotalPMUS, main = "Total Emission per Year", xlab = "Year", ylab = "Emissions", type = "l")
