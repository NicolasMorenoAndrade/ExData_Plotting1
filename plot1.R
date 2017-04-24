
setwd("~/Desktop/DataScience/ExData_Plotting1/")

download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", 
              destfile = "fulldata.zip")

#read the whole file from the repo main dir
power <- read.csv(unzip("./fulldata.zip"), sep=";", na.strings = "?", stringsAsFactors=FALSE)
# delete zipped files
file.remove("household_power_consumption.txt")
file.remove("fulldata.zip")

#transform date into R date
powermini <- subset(power, Date == "1/2/2007" | Date == "2/2/2007")

#open the png device
png("plot1.png", width=480, height=480)
#plot the histogram
hist(powermini$Global_active_power, col="red", main="Global Active Power", 
     xlab="Global Active Power (Kilowatts)", ylab = "Frequency")
dev.off()

#save the subsetted data frame as a .RData to be loaded from the rest of the scripts
save(powermini, file="projectdata.RData")
