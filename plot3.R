##Loading the data
#Step 1, setting the directory
#Step 2, loading the data into "my_data"

setwd("C:/Users/Osath/OneDrive/Desktop/Rproject2")
my_data <- read.delim("household_power_consumption.txt", header=T, sep=';', na.strings="?")
my_data2<-read.delim("household_power_consumption.txt", header=T, sep=';')

##Subsetting the data needed
feb010207<-subset(my_data,Date %in% c("1/2/2007","2/2/2007"))
feb0102072<-subset(my_data2,Date %in% c("1/2/2007","2/2/2007"))

##Making plot and adding lines 
with(feb010207, {
plot(Sub_metering_1~datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~datetime,col='Red')
  lines(Sub_metering_3~datetime,col='Blue')})
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
dev.copy(png,"plot3.png", width=480, height=480)
dev.off()
