

##Loading the data
#Step 1, setting the directory
#Step 2, loading the data into "my_data"

setwd("C:/Users/Osath/OneDrive/Desktop/Rproject2")
my_data <- read.delim("household_power_consumption.txt", header=T, sep=';', na.strings="?")
my_data2<-read.delim("household_power_consumption.txt", header=T, sep=';')

##Subsetting the data needed
feb010207<-subset(my_data,Date %in% c("1/2/2007","2/2/2007"))
feb0102072<-subset(my_data2,Date %in% c("1/2/2007","2/2/2007"))

##Making plots 
par(mfrow=c(2,2))
plot(feb010207$datetime, feb010207$Global_active_power, ylab="Global Active Power", type = "l", xlab = "  " )
plot(feb010207$datetime, feb010207$Voltage, ylab="voltage", type = "l", xlab = "  " )
with(feb010207, {
  plot(Sub_metering_1~datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~datetime,col='Red')
  lines(Sub_metering_3~datetime,col='Blue')
})
plot(feb010207$datetime, feb010207$Global_reactive_power, ylab="Global_reactive_Power", type = "l", xlab = " datetime " )
dev.copy(png,"plot4.png", width=480, height=480)
dev.off()