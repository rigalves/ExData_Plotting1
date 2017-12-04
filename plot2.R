####################################################################################
# Script created by Rigoberto Alvarez (rigoberto.alvarez@gmail.com)
# Subject: Peer-graded Assignment: Course Project 1
# Part of the Data Science Specialization @ JHU
# Script to generate the Plot # 2
####################################################################################

source("./data/loadData.R")
hpcDataSet <- loadHPCDataSet()

png(filename = "plot2.png")
with(hpcDataSet, plot(DateTime, Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type="l"))
dev.off()