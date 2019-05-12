
##Loading the data
#Step 1, setting the directory
#Step 2, loading the data into "my_data"


setwd("C:/Users/Osath/OneDrive/Desktop/Rproject2")
my_data <- read.delim("household_power_consumption.txt", header=T, sep=';', na.strings="?")
my_data2<-read.delim("household_power_consumption.txt", header=T, sep=';')


##Subsetting the data needed

feb010207<-subset(my_data,Date %in% c("1/2/2007","2/2/2007"))
feb0102072<-subset(my_data2,Date %in% c("1/2/2007","2/2/2007"))


##Making plot

hist(feb010207$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()

