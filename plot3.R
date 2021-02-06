setwd("C:/Users/okucu/Desktop/Coursera/ExData_Plotting1-master/ExData_Plotting1-master")

data <- read.csv(file = "../../exdata_data_household_power_consumption/household_power_consumption.txt",sep=';', na.strings='?')

data <- subset(data,as.Date(data$Date,format='%d/%m/%Y')=='2007-02-01'| as.Date(data$Date,format='%d/%m/%Y')=='2007-02-02')

png("plot3.png")

plot(data$Sub_metering_1,type='l',col='black', xaxt="n",xlab="",ylab='Energy sub metering')

lines(data$Sub_metering_2,col='red')

lines(data$Sub_metering_3,col='blue')

len<-length(data$Date)

axis(1, labels=c('Thu','Fri','Sat'), at=c(1,len/2,len), lty=1)

legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),cex=0.8,col=c('black','red','blue'),lty=c(1,1,1))

dev.off()

