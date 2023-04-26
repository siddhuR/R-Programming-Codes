# Clean the data
data <- data.frame(x1 = c(1:4, 99999, 1, NA, 1, 1, NA))
data


install.packages('sqldf')
library(sqldf)

install.packages('babynames')
library(babynames)


sqldf("select count(*) from mydata")

sqldf("select * from mydata limit 10")








