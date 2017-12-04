####################################################################################
# Script created by Rigoberto Alvarez (rigoberto.alvarez@gmail.com)
# Subject: Peer-graded Assignment: Course Project 1
# Part of the Data Science Specialization @ JHU
# Script to generate the Plot # 1
####################################################################################

source("./data/loadData.R")
hpcDataSet <- loadHPCDataSet()

png(filename = "plot1.png")
hist(hpcDataSet$Global_active_power, col = "#ff2500", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()