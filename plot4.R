####################################################################################
# Script created by Rigoberto Alvarez (rigoberto.alvarez@gmail.com)
# Subject: Peer-graded Assignment: Course Project 1
# Part of the Data Science Specialization @ JHU
# Script to generate the Plot # 4
####################################################################################

source("./data/loadData.R")
hpcDataSet <- loadHPCDataSet()

png(filename = "plot4.png")
# Image split (2x2)
par(mfrow = c(2, 2))
# Graph 4.1
with(hpcDataSet, plot(DateTime, Global_active_power, xlab = "", ylab = "Global Active Power", type="l"))
# Graph 4.2
with(hpcDataSet, plot(DateTime, Voltage, xlab = "datetime", ylab = "Voltage", type="l"))
# Graph 4.3
with(hpcDataSet, plot(DateTime, Sub_metering_1 , xlab = "", ylab = "Energy sub metering", type="l"))
with(hpcDataSet, lines(DateTime, Sub_metering_2 , col = "red"))
with(hpcDataSet, lines(DateTime, Sub_metering_3 , col = "blue"))
legend("topright", pch = 95, cex = 0.9, pt.cex = 1.5, bty = "n", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
# Graph 4.4
with(hpcDataSet, plot(DateTime, Global_reactive_power, xlab = "datetime", type="l"))
dev.off()