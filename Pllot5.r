setwd("C:/Project2")
data1 <- readRDS("Source_Classification_Code.rds")
data2 <- readRDS("summarySCC_PM25.rds")

sub <- subset(data2, fips == "24510" & type=="ON-ROAD")
> baltisource <- aggregate(sub[c("Emissions")], list(type = sub$type, year = sub$year, zip = sub$fips), sum)
> qplot(year, Emissions, data = baltisource, geom= "line") + ggtitle("Motor Vehicle-Related Emissions in Baltimore County") + xlab("Year") + ylab("Emission Levels")
