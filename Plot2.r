setwd("C:/Project2")
data1 <- readRDS("Source_Classification_Code.rds")
data2 <- readRDS("summarySCC_PM25.rds")

balti <- subset(data2, data2$fips==24510)
totalbalti <- tapply(balti$Emissions, INDEX=balti$year, sum)
plot(totalbalti, main = "Total Emission per Year", xlab = "Year", ylab = "Emissions", type = "l")
