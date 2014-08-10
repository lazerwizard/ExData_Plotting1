setwd("/Users/a1")   ## setup the directory
tab <- read.table("household_power_consumption.txt", sep=';', na.strings="?", 
                  colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")) ## data calling
tab1 <- tab[(tab$Date == "1/2/2007") | (tab$Date == "2/2/2007"),]
#head(tab1)
#dim(tab1)
png(filename = "plot2.png", width = 480, height = 480, units = "px")
tab1$DateTime <- strptime(paste(tab1$Date, tab1$Time), "%d/%m/%Y %H:%M:%S")
plot(tab1$DateTime, tab1$Global_active_power, type="l", ylab="Global Active Power (kilowatts)")
dev.off()