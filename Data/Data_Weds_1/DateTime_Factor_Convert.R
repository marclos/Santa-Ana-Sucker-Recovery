# Converting Factors to Datetime

site4 <- read.csv("/home/CAMPUS/mwl04747/github/Santa-Ana-Sucker-Recovery/Data/Data_Weds_1/Concrete clipped.csv")
site2 <- read.csv("/home/CAMPUS/mwl04747/github/Santa-Ana-Sucker-Recovery/Data/Data_Weds_1/2nd_Site clipped.csv")
site3 <- read.csv("/home/CAMPUS/mwl04747/github/Santa-Ana-Sucker-Recovery/Data/Data_Weds_1/3rd_Site clipped.csv")
site1 <- read.csv("/home/CAMPUS/mwl04747/github/Santa-Ana-Sucker-Recovery/Data/Data_Weds_1/Plunge_Pool clipped.csv")

str(site1)

site1$TempCor<-site1$Temp-.121
site2$TempCor<-site2$Temp-.121
site3$TempCor<-site3$Temp-.232
site4$TempCor<-site4$Temp-.232

# Assuming PDT!
site1$datetime <- as.POSIXct(site1$DateTime,format="%m/%d/%Y %H:%M")
site2$datetime <- as.POSIXct(site2$DateTime,format="%m/%d/%Y %H:%M")
site3$datetime <- as.POSIXct(site3$DateTime,format="%m/%d/%Y %H:%M")
site4$datetime <- as.POSIXct(site4$DateTime,format="%m/%d/%Y %H:%M")

plot(site3$datetime, site3$TempCor, ty='l', col='green', ylim=c(25,32), las=1)
lines(site4$datetime, site4$TempCor, col='black')
lines(site2$datetime, site2$TempCor, col='red')
lines(site1$datetime, site1$TempCor, col='blue')


