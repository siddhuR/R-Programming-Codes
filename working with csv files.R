
# Working with csv files

# Creating and Importing the CSV file 

# get start with the csv files
getwd()

# setting the location files to save all the working directories.
# after copying the location path change all the front slash to back slash here in the below line.
# Actual path is "E:\Study\LPU\B.TECH\3rd Year\6th Semester\INT232 - DATA SCIENCE TOOLBOX  R PROGRAMMING\sample working directories"

setwd("E:/Study/LPU/B.TECH/3rd Year/6th Semester/INT232 - DATA SCIENCE TOOLBOX  R PROGRAMMING/sample working directories")

# To read the data from the directory

data <- read.csv("input.csv")

print(data)

data2 <- read.csv("input2.csv")

print(data2)

#============================================================

# Analyzing the CSV file

print(is.data.frame(data))
print(ncol(data))
print(nrow(data))

# data of particular row
sal <- max(data$salary)
print(sal)

# Get the person detail having max
salary.retval <- subset(data, salary == max(salary))
print(salary.retval)

#
data <- read.csv("input.csv")
retval <- subset( data, dept.1 == "IT")
print(retval)


data <- read.csv("input.csv")
info <- subset(data, salary > 600 & dept.1 == "IT")
print(info)

data <- read.csv("input.csv")
retval <- subset(data, as.Date(start_date) > as.Date("2014-01-01"))
print(retval)

#=============================================================================

# Writing into the CSV file

data <- read.csv("input.csv")
retval <- subset(data, as.Date(start_date) > as.Date("2014-01-01"))
print(retval)

write.csv(retval,"output.csv")
newdata <- read.csv("output.csv")
print(newdata)

#============================================================================

# practice

data <- read.csv("input3.csv")

print(ncol(data))
print(nrow(data))


projects.retval <- subset(data, projects == max(projects))
print(projects.retval)

data1 <- read.csv("input3.csv")
info <- subset(data1, salary > data1$salary[5])
print(info)



