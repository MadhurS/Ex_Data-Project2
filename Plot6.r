setwd("C:/Project2")
data1 <- readRDS("Source_Classification_Code.rds")
data2 <- readRDS("summarySCC_PM25.rds")

balti <- subset(data2, data2$fips==24510)
totalbalti <- tapply(balti$Emissions, INDEX=balti$year, sum)

sub <- subset(data2, fips == "24510" & type=="ON-ROAD")
baltisource <- aggregate(sub[c("Emissions")], list(type = sub$type, year = sub$year, zip = sub$fips), sum)

sub1 <- subset(data2, fips == "06037" & type=="ON-ROAD")
lasource <- aggregate(sub1[c("Emissions")], list(type = sub1$type, year = sub1$year, zip = sub1$fips), sum)

new <- rbind(baltisource, lasource)

qplot(year, Emissions, data = new , color = zip, geom = "line") + ggtitle("Emissions: Baltimore VS Los Angeles") + xlab("Year") + ylab("Emission")
