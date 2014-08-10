setwd("/Users/a1")
tab <- read.table("household_power_consumption.txt", header=TRUE, sep=';', na.strings="?", colClasses=c("character","character",
                                                                                                        "numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

tab1 <- tab[(tab$Date == "1/2/2007") | (tbl$Date == "2/2/2007"),]
head(tab1)
dim(tab1)
png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(tab1$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()