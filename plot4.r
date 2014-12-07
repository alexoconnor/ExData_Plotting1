



# Using working directory

# load data
source('import_data_and_correct_dates.r')

# open device
png(filename='plot4.png',width=480,height=480,units='px')

# create plots
par(mfrow=c(2,2))

# left top (1,1)
plot(power_cons$DateTime,power_cons$Global_active_power,ylab='Global Active Power',xlab='',type='l')

# right_top (1,2)
plot(power_cons$DateTime,power_cons$Voltage,xlab='datetime',ylab='Voltage',type='l')

# left bottom (2,1)
lncol<-c('black','red','blue')
lbls<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(power_cons$DateTime,power_cons$Sub_metering_1,type='l',col=lncol[1],xlab='',ylab='Energy sub metering')
lines(power_cons$DateTime,power_cons$Sub_metering_2,col=lncol[2])
lines(power_cons$DateTime,power_cons$Sub_metering_3,col=lncol[3])

# right bottom (2,2)
plot(power_cons$DateTime,power_cons$Global_reactive_power,xlab='datetime',ylab='Global_reactive_power',type='l')

# close device
x<-dev.off()

