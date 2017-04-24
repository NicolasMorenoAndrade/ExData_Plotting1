
setwd("~/Desktop/DataScience/ExData_Plotting1/")

#load the previously subsetted and formatted data
load("projectdata.RData")

#open the png dev
png("plot3.png", width=480, height=480)

#plot the histogram
plot(powermini$Time,powermini$Sub_metering_1, type="l", main="", 
     ylab="Energy sub metering", xlab = "")
lines(powermini$Time,powermini$Sub_metering_2, type="l", col="red")
lines(powermini$Time,powermini$Sub_metering_3, type="l", col="blue")
dev.off()

