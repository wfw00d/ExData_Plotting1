x<-read.table('household_power_consumption.txt',sep=";",header=TRUE, stringsAsFactors=FALSE)
#pulls the table and converts the ?'s the NA's
suppressWarnings(x$Global_active_power<-as.numeric(x$Global_active_power))
suppressWarnings(x$Global_reactive_power<-as.numeric(x$Global_reactive_power))
#looks at the 2 appropriate days
y<-x[x$Date=='1/2/2007'|x$Date=='2/2/2007',]
#creates plot
png(file='plot1.png')
hist(y$Global_active_power,col='red',xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()
