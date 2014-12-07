


# Using working directory

# load data
source('import_data_and_correct_dates.r')

# open device
png(filename='plot2.png',width=480,height=480,units='px')

# plot data
plot(power_cons$DateTime,power_cons$Global_active_power,ylab='Global Active Power (kilowatts)', xlab='', type='l')

# close device
x<-dev.off()

