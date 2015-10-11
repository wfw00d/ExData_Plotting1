
x<-read.table('household_power_consumption.txt',sep=";",header=TRUE, stringsAsFactors=FALSE)

suppressWarnings(x$Global_active_power<-as.numeric(x$Global_active_power))
suppressWarnings(x$Global_reactive_power<-as.numeric(x$Global_reactive_power))

y<-x[x$Date=='1/2/2007'|x$Date=='2/2/2007',]

png(file='plot2.png')

plot(y$Global_active_power,type='l',x=strptime(paste(y$Date,y$Time),format="%d/%m/%Y %H:%M:%S"),ylab='Global Acive Power (kilowatts)',xlab='')

dev.off()
