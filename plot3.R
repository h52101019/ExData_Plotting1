source("loading_data.R")

# Plotting
with(data,{
  plot(x = Time, y = Sub_metering_1, type = "l",
       xlab = "", ylab = "Energy sub metering")
  lines(x = Time, y = Sub_metering_2, col = "red")
  lines(x = Time, y = Sub_metering_3, col = "blue")
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         col = c("black", "red", "blue"), lty = c(1, 1, 1), cex = 0.4)
})

# Save the plot
dev.copy(png, "plot3.png", width = 480, height = 480)
dev.off()

