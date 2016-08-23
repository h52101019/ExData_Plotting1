source("loading_data.R")

# Plotting
with(data, hist(Global_active_power,
                col = "red",
                main = "Global Active Power",
                xlab = "Global Active Power (kilowatts)",
                ylab = "Frequency"))

# Save the plot
dev.copy(png, "plot1.png", width = 480, height = 480)
dev.off()
