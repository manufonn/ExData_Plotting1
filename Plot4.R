par(mfrow=c(2,2)) ##  combine multiple plots into one overall graph to create a matrix of 2rows x 2cols plots that are filled in by row


## display all the 4 plots


all4 <- with(myData, 
        		{
 
plot(times, myData$Global_active_power, type="n", xlab="", ylab="Global_active_power")

lines(times, myData$Global_active_power, col="red")

                       
plot(times, myData$Voltage, type="n",xlab="x=TIMES", ylab="Voltage")
         
lines(times, myData$Voltage, col="orange")

                      
plot(times, myData$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
                       
lines(times, myData$Sub_metering_1, col="orange")
                        
lines(times, myData$Sub_metering_2, col="blue")
                       
lines(times, myData$Sub_metering_3, col="red")
                       
                       
legend("topright", bty="n", lty=1, col=c("orange", "blue", "red"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
                        


plot(times, myData$Global_reactive_power, type="n", xlab="times", ylab="Global_reactive_power")
                       
lines(times, myData$Global_reactive_power, col="black")

} )