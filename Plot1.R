# assignement for Coursera course on Exploratory Data Analysis
# week 1
# candidate: christophe.cahn@gmail.com

# versions used
# =============
# platform       x86_64-apple-darwin13.4.0   
# arch           x86_64                      
# os             darwin13.4.0                
# system         x86_64, darwin13.4.0        
# status                                     
# major          3                           
# minor          2.3                         
# year           2015                        
# month          12                          
# day            10                          
# svn rev        69752                       
# language       R                           
# version.string R version 3.2.3 (2015-12-10)
# nickname       Wooden Christmas-Tree   

library(data.table)
library(dplyr)

# First, loading the dataset and convert date & time variables
data <- read.table("household_power_consumption.txt", header = TRUE, sep=";",colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),na.strings = "?")
data <- data.table(data)
data <- data[Date=="1/2/2007" | Date=="2/2/2007"]

# data <- mutate(data, Moment= strptime(paste(Date,Time), "%d/%m/%Y %H:%M:%S"))

hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.copy(png,'plot1.png', width = 480, height = 480)
dev.off()
