


# Using working directory


# load data
source('import_data_and_correct_dates.r')

# open device
png(filename='plot3.png',width=480,height=480,units='px')

# plot data
lncol<-c('black','red','blue')
lbls<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(power_cons$DateTime,power_cons$Sub_metering_1,type='l',col=lncol[1],xlab='',ylab='Energy sub metering')
lines(power_cons$DateTime,power_cons$Sub_metering_2,col=lncol[2])
lines(power_cons$DateTime,power_cons$Sub_metering_1,col=lncol[3])

# add legend
legend('topright',legend=lbls,col=lncol,lty='solid')

# close device
x<-dev.off()

