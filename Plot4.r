setwd("C:/Project2")
data1 <- readRDS("Source_Classification_Code.rds")
data2 <- readRDS("summarySCC_PM25.rds")

greps1<-unique(grep("coal", data1$EI.Sector, ignore.case=TRUE, value=TRUE))  
data3<-subset(data1, EI.Sector %in% greps1)    
coal<-subset(data2, data1 %in% data1$SCC)

ggplot(data=coal, aes(x=year, y=Emissions, fill = type)) + 
  geom_bar(stat="identity", position= "dodge") + 
  ggtitle("U.S. Coal Combustion-Related Emissions: 1999-2008")
