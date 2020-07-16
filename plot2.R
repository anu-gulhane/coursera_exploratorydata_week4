summarySCC_PM25 <- readRDS("D:/Anuja RAIT desktop/datasciencecoursera/coursera_exploratorydata_week4/summarySCC_PM25.rds")
Source_Classification_Code <- readRDS("D:/Anuja RAIT desktop/datasciencecoursera/coursera_exploratorydata_week4/Source_Classification_Code.rds")
subsetNEI  <- summarySCC_PM25 [summarySCC_PM25 $fips=="24510", ]
aggregatetotal<-aggregate(Emissions~year,subsetNEI,sum)
png("plot2.png")
barplot(height = aggregatetotal$Emissions,names.arg=aggregatetotal$year,xlab="years",ylab=expression('total PM'[2.5]*'emission'),main=expression('Total PM'[2.5]*'in the baltimore city,md emissions at various years'))
dev.off()