#AlgaevReachTest

read.csv(file.choose())

mydata= "/home/CAMPUS/vesj2015/Santa-Ana-Sucker-Recovery/Data/Data_TUES_1/AlgaevSites.csv"

import=read.csv(mydata)
results.aov=aov(Algae~Site,data=import)
