#Setting Working Directory
setwd( "C:/Users/DELL/Documents/R")

#Loading the required data set as a csv file
data<- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

#Subsetting the required data set where dates are only 2007-02-01 and 2007-02-02
data1 <- subset(data, Date %in% c("1/2/2007","2/2/2007"))

#Converting Date variable of dataset into Date class from character class
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")

# Creating a png file named plot1.png with given dimensions
png("plot1.png", width=480, height=480)

#Plotting the required histogram and closing the graphic device
hist(data1$Global_active_power, main="Global Active Power",xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.off()