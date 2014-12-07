
# using working directory


# load data
source('import_data_and_correct_dates.R')

# open device
png(filename='plot1.png',width=480,height=480,units='px')

# plot data
hist(power_cons$Global_active_power,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')

# Turn off device
x<-dev.off()