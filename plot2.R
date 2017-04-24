
setwd("~/Desktop/DataScience/ExData_Plotting1/")

#load the previously subsetted data
load("projectdata.RData")

#time format
powermini$Time <- strptime(paste(powermini$Date,powermini$Time, sep=" ") ,"%d/%m/%Y %H:%M:%S")

#open the png dev
png("plot2.png", width=480, height=480)
#line plot
plot(powermini$Time,powermini$Global_active_power, type="l", main="Global Active Power", 
     ylab="Global Active Power (Kilowatts)", xlab = "")

dev.off()

#save the subsetted data frame as a .RData to be loaded from the rest of the scripts
save(powermini, file="projectdata.RData")
