##Loading the data
#Step 1, setting the directory
#Step 2, loading the data into "my_data"

setwd("C:/Users/Osath/OneDrive/Desktop/Rproject2")
my_data <- read.delim("household_power_consumption.txt", header=T, sep=';', na.strings="?")
my_data2<-read.delim("household_power_consumption.txt", header=T, sep=';')


##Subsetting the data needed
feb010207<-subset(my_data,Date %in% c("1/2/2007","2/2/2007"))
feb0102072<-subset(my_data2,Date %in% c("1/2/2007","2/2/2007"))

##convert time to days then plot
feb010207$Date <- as.Date(feb010207$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(feb010207$Date), feb010207$Time)
feb010207$datetime <- as.POSIXct(datetime)

##Making plots
plot(feb010207$datetime, feb010207$Global_active_power, ylab="Global Active Power (kilowatts)", type = "l", xlab = "  " )
dev.copy(png,"plot2.png", width=480, height=480)
dev.off()