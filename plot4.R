
setwd("~/Desktop/DataScience/ExData_Plotting1/")

#load the previously subsetted and formatted data
load("projectdata.RData")

#open the png dev
png("plot4.png", width=480, height=480)
#set up the display of the 4 graphs
par(mfrow = c(2, 2)) 


#top left corner
plot(powermini$Time,powermini$Global_active_power, type="l", 
     ylab="Global Active Power", xlab = "")

#top right corner (voltage)
plot(powermini$Time,powermini$Voltage, type="l", 
     ylab="Global Active Power", xlab = "")

#left bottom corner
plot(powermini$Time,powermini$Sub_metering_1, type="l", main="", 
     ylab="Energy sub metering", xlab = "")
lines(powermini$Time,powermini$Sub_metering_2, type="l", col="red")
lines(powermini$Time,powermini$Sub_metering_3, type="l", col="blue")

#right bottom corner
plot(powermini$Time,powermini$Global_reactive_power, type="l", 
     ylab="Global Active Power", xlab = "")

dev.off()

