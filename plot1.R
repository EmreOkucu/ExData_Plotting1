setwd("C:/Users/okucu/Desktop/Coursera/ExData_Plotting1-master/ExData_Plotting1-master")

data <- read.csv(file = "../../exdata_data_household_power_consumption/household_power_consumption.txt",sep=';', na.strings='?')

data <- subset(data,as.Date(data$Date,format='%d/%m/%Y')=='2007-02-01'| as.Date(data$Date,format='%d/%m/%Y')=='2007-02-02')

png("plot1.png")

hist(data$Global_active_power,col='red',main='Global Active Power',xlab='Global Active Power(kilowatts)',ylab='Frequency')

dev.off()


