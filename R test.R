library(ggplot2)
library(forecast)
library(tseries)
library(stR)


x9<- read.csv('C:\\Users\\sudee\\Desktop\\Kaggle Datasets\\infy.csv')

fitma <- ma(x9$Close.Price, order=4)

#Plot Actual vs forecast
plot(x9$Close.Price[c(5:248)], col="gray", type = "l",
     main="Euro Retail",
     ylab="Index", xlab="")
lines(fitma,col="red",ylab="Trend")

fcma<- forecast(fitma, h=10)
Valueforecastma <- as.data.frame(cbind(fcma$mean, fcma$lower, fcma$upper))


fitma1 <- ma(x9$Close.Price, order=16)

#Plot Actual vs forecast
plot(x9$Close.Price[c(17:248)], col="gray", type = "l",
     main="Euro Retail",
     ylab="Index", xlab="")
lines(fitma,col="red",ylab="Trend")

fcma<- forecast(fitma, h=12)
Valueforecastma <- as.data.frame(cbind(fcma$mean, fcma$lower, fcma$upper))
