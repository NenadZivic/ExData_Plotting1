power_con <- read.table("household_power_consumption.txt", sep = ";", header = TRUE);
power_con_feb12 <- power_con[66638:(66638 + 1440 + 1440),];
list_gl_ac_pow = power_con_feb12$Global_active_power;
list_num <- as.numeric(list_gl_ac_pow) / 500;
plot(list_num, col = "red", xlab = "Global Active Power (kilowatts)");
dev.copy(png, "plot2.png");
dev.off();