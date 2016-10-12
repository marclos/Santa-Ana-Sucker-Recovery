# Converting Factors to Datetime

test <- read.csv(file.choose())

str(test)
head(test)

# Assuming PDT!
z <- as.POSIXct(test$DateTime,format="%m/%d/%Y %H:%M"); z

