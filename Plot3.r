setwd("C:/Project2")
data1 <- readRDS("Source_Classification_Code.rds")
data2 <- readRDS("summarySCC_PM25.rds")

balti <- subset(data2, data2$fips==2451)

ggplot(data=balti, aes(x=year, y=Emissions, fill=type)) + ggtitle("Baltimore:Total Emissions") +geom_bar(stat = "identity", position = "dodge")
