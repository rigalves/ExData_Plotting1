####################################################################################
# Script created by Rigoberto Alvarez (rigoberto.alvarez@gmail.com)
# Subject: Peer-graded Assignment: Course Project 1
# Part of the Data Science Specialization @ JHU
# Script to load the source file
####################################################################################

# Initialization and useful variables

library(sqldf)

loadHPCDataSet <- function() {
    zippedDataSetsUrL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(zippedDataSetsUrL, destfile="./data/zippedDataSets.zip")
    unzip(zipfile = "./data/zippedDataSets.zip", overwrite = T, exdir = "./data")
    hpcDataSetFileName <- "./data/household_power_consumption.txt"
    
    # File reading and cleaning
    query <- "select * from file where Date='1/2/2007' or Date='2/2/2007'"
    hpcDataSet <- read.csv.sql(file = hpcDataSetFileName, sql = query, sep = ';', header = T)
    hpcDataSet$DateTime <- strptime(paste(hpcDataSet$Date, hpcDataSet$Time), "%d/%m/%Y %H:%M:%S")
    hpcDataSet
}

