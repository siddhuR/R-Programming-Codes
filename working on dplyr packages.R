# Working on dplyr packages

install.packages("dplyr")
library(dplyr)

# importing the data from internet

mydata = read.csv("https://raw.githubusercontent.com/deepanshu88/data/master/sampledata.csv")

print(mydata)
# if above link doesn't suppport to import the cv file, use this method of uplading the file manually
#mydata= read.csv("E:/Study/LPU/B.TECH/3rd Year/6th Semester/INT232 - DATA SCIENCE TOOLBOX  R PROGRAMMING/sample working directories/data1.csv")

getwd()

sample_n(mydata,3)
sample_frac(mydata,0.1)

# get the data of only 30% from the dataset
sample_frac(mydata,0.3)


