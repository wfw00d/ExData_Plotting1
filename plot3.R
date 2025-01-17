x<-read.table('household_power_consumption.txt',sep=";",header=TRUE, stringsAsFactors=FALSE)
#pulls the table and converts the ?'s the NA's
suppressWarnings(x$Global_active_power<-as.numeric(x$Global_active_power))
suppressWarnings(x$Global_reactive_power<-as.numeric(x$Global_reactive_power))
#looks at the 2 appropriate days
y<-x[x$Date=='1/2/2007'|x$Date=='2/2/2007',]
#creates plot

png(file='plot3.png')


plot(y$Sub_metering_1,type='l',x=strptime(paste(y$Date,y$Time),format="%d/%m/%Y %H:%M:%S"),ylab="Energy sub metering",xlab='')
lines(y$Sub_metering_2,y$Sub_metering_1,type='l',x=strptime(paste(y$Date,y$Time),format="%d/%m/%Y %H:%M:%S"),col='red')
lines(y$Sub_metering_3,y$Sub_metering_1,type='l',x=strptime(paste(y$Date,y$Time),format="%d/%m/%Y %H:%M:%S"),col='blue')
legend("topright",col=c('black','red','blue'),lwd=1,legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))

dev.off()

