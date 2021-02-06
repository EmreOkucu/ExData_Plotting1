setwd("C:/Users/okucu/Desktop/Coursera/ExData_Plotting1-master/ExData_Plotting1-master")

data <- read.csv(file = "../../exdata_data_household_power_consumption/household_power_consumption.txt",sep=';', na.strings='?')

data <- subset(data,as.Date(data$Date,format='%d/%m/%Y')=='2007-02-01'| as.Date(data$Date,format='%d/%m/%Y')=='2007-02-02')


png("plot2.png")

plot(data$Global_active_power,type='l', xaxt='n',xlab='',ylab='Global Active Power(kilowatts)')

len<-length(data$Date)

axis(1, labels=c('Thu','Fri','Sat'), at=c(1,len/2,len), lty=1)

dev.off()

