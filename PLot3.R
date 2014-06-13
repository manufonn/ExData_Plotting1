myFile <- "household_power_consumption.txt"

mySql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"

myData <- read.csv.sql(myFile, sql=mySql, sep=";")

colnames(myData) <- c('Date', 'Time', 'Global_active_power', 'Global_reactive_power', 'Voltage', 'Global_intensity', 'Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3')

## Merging Date and Time columns into one vector with the appropriate format.

times <- strptime(paste(myData$Date,myData$Time,sep=" "),"%d/%m/%Y %H:%M:%S")


plot(times,myData$Sub_metering_1,type="n", xlab="",ylab="Energy sub metering")

lines(times,myData$Sub_metering_1,col="orange")
lines(times,myData$Sub_metering_2,col="blue")
lines(times,myData$Sub_metering_3,col="red")

legend("topright",bty="n",lty=1,col=c("orange","blue","red"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

