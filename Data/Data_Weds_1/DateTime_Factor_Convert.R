# Converting Factors to Datetime

site4 <- read.csv("/home/CAMPUS/mwl04747/github/Santa-Ana-Sucker-Recovery/Data/Data_Weds_1/Concrete clipped.csv")
site2 <- read.csv("/home/CAMPUS/mwl04747/github/Santa-Ana-Sucker-Recovery/Data/Data_Weds_1/2nd_Site clipped.csv")
site3 <- read.csv("/home/CAMPUS/mwl04747/github/Santa-Ana-Sucker-Recovery/Data/Data_Weds_1/3rd_Site clipped.csv")
site1 <- read.csv("/home/CAMPUS/mwl04747/github/Santa-Ana-Sucker-Recovery/Data/Data_Weds_1/Plunge_Pool clipped.csv")

str(site1)

# Assuming PDT!
site1$datetime <- as.POSIXct(site1$DateTime,format="%m/%d/%Y %H:%M")
site2$datetime <- as.POSIXct(site2$DateTime,format="%m/%d/%Y %H:%M")
site3$datetime <- as.POSIXct(site3$DateTime,format="%m/%d/%Y %H:%M")
site4$datetime <- as.POSIXct(site4$DateTime,format="%m/%d/%Y %H:%M")

plot(site4$datetime, site4$Temp, ty='l')
lines(site3$datetime, site3$Temp, col='green')
lines(site2$datetime, site2$Temp, col='red')

lines(site1$datetime, site1$Temp, col='blue')


