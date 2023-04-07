# Project Practice

mydata==read.css(file="beijingpm.csv")
mydata=mydata[complete.cases(mydata),]

library(ggplot2)
ggplot(mydata,aes(Iws,pm2.5,color="pink"))+theme_bw()+ggtitle("wind speed and pm2.5 in Beijing")+
  xlab("wind speed(m/s)")+geom_point()

ggplot(mydata,aes(c))