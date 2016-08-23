## Loading data
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

# The dataset has 2,075,259 rows and 9 columns.
# dim(data)
# str(data)

# Only using data from the dates 2007-02-01 and 2007-02-02
data <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

# Converting the 'Date' and 'Time' variables to Date/Time classes
data$Date <- as.Date(strptime(data$Date, format = "%d/%m/%Y"))
data$Time <- strptime(paste0(data$Date, data$Time), format = "%Y-%m-%d %H:%M:%S")