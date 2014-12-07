
#I manually downloaded & unzipped the data file to my working directory.

# required packages
library(data.table)
library(lubridate)


# read data in 

  variables<-c(rep('character',2),rep('numeric',7))
  power_cons<-read.table('household_power_consumption.txt',header=TRUE,
                                sep=';',na.strings='?',colClasses=variables)

#subsetting the data for two days

  power_cons<-power_cons[power_cons$Date=='1/2/2007' | power_cons$Date=='2/2/2007',]


#combining date & time into one field

  power_cons$DateTime<-dmy(power_cons$Date)+hms(power_cons$Time)

#setting up the new table

  power_cons<-power_cons[,c(10,3:9)]
  
# Saving the new data set

  write.table(power_cons,file='power_cons_tidy.txt',sep='|',row.names=FALSE)
