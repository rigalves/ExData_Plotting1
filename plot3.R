####################################################################################
# Script created by Rigoberto Alvarez (rigoberto.alvarez@gmail.com)
# Subject: Peer-graded Assignment: Course Project 1
# Part of the Data Science Specialization @ JHU
# Script to generate the Plot # 3
####################################################################################

source("./data/loadData.R")
hpcDataSet <- loadHPCDataSet()

png(filename = "plot3.png")
with(hpcDataSet,plot(DateTime, Sub_metering_1 , xlab = "", ylab = "Energy sub metering", type="l"))
with(hpcDataSet, lines(DateTime, Sub_metering_2 , col = "red"))
with(hpcDataSet, lines(DateTime, Sub_metering_3 , col = "blue"))
legend("topright", pch = 95, pt.cex = 1.5, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()