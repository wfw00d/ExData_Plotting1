x<-read.table('household_power_consumption.txt',sep=";",header=TRUE, stringsAsFactors=FALSE)

suppressWarnings(x$Global_active_power<-as.numeric(x$Global_active_power))
suppressWarnings(x$Global_reactive_power<-as.numeric(x$Global_reactive_power))

y<-x[x$Date=='1/2/2007'|x$Date=='2/2/2007',]

png(file='plot1.png')
hist(y$Global_active_power,col='red',xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()