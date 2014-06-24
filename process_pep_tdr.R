library(oce)
library(lubridate)

d <- read.csv('hobo_tdr_10338392.csv', skip=1, stringsAsFactors=FALSE)
names(d) <- c('Number', 'Date', 'Pressure', 'Temperature', 'C1', 'C2', 'H1', 'Stopped', 'EOF')
d$time <- as.POSIXct(d$Date, format='%m/%d/%y %I:%M:%S %p', tz='America/New_York')
d$time <- with_tz(d$time, 'UTC')
