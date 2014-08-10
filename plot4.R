setwd("/Users/a1")
tab <- read.table("household_power_consumption.txt", sep=';', na.strings="?", 
                  colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
tab1 <- tab[(tab$Date == "1/2/2007") | (tab$Date == "2/2/2007"),]
tab1$DT<- strptime(paste(tab1$Date, tab1$Time), "%d/%m/%Y %H:%M:%S")

png(filename = "plot4.png", width = 480, height = 480, units = "px")
par (mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))
plot(tab1$DT, tab1$Global_active_power, xlab="", ylab="Global Active Power", type="l")
plot(tab1$DT, tab1$Voltage, xlab="datetime", ylab="Voltage", type="l")
cols = c("SM1", "SM2", "SM3")
plot(tab1$DT, tab1$SM1, type="l", xlab="", ylab="Energy sub metering")
lines(tab1$DT, tab1$SM2, type="l", col="red")
lines(tab1$DT, tab1$SM3, type="l", col="blue")
legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=cols, bty="n")
plot(tab1$DT, tab1$Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l")

dev.off()