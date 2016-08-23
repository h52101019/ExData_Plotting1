source("loading_data.R")

## Setting layout (4 figures arranged in 2 rows and 2 columns)
par(mfrow = c(2, 2))

## Plotting
# Figure 1
with(data, plot(x = Time,
                y = Global_active_power,
                type = "l",
                xlab = "",
                ylab = "Global Active Power"))
# Figure 2
with(data, plot(x = Time,
                y = Voltage,
                type = "l",
                xlab = "datetime",
                ylab = "Voltage"))
# Figure 3
with(data, {
  plot(x = Time, y = Sub_metering_1, type = "l",
       xlab = "", ylab = "Energy sub metering")
  lines(x = Time, y = Sub_metering_2, col = "red")
  lines(x = Time, y = Sub_metering_3, col = "blue")
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         col = c("black", "red", "blue"), lty = c(1, 1, 1),
         bty = "n", cex = 0.07)
})
# Figure 4
with(data, plot(x = Time,
                y = Voltage,
                type = "l",
                xlab = "datetime",
                ylab = "Global_reactive_power"))

## Save the plot
dev.copy(png, "plot4.png", width = 480, height = 480)
dev.off()
