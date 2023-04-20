# apply() function

mymatrix<-matrix(1:9,nrow=3)
mymatrix

apply(mymatrix,1,sum)
apply(mymatrix,2,sum)

mymatrix1 <- matrix(3*(1:6),nrow = 2)
apply(mymatrix1,1,sum)

mymatrix[2,3]<-NA
mymatrix[2,1]<-NA

mymatrix

apply(mymatrix,1,sum,na.rm=TRUE)

mylist<-list(A=matrix(1:9,nrow=3),B=1:5,C=8)
mylist

lapply(mylist,sum)

unlist(lapply(mylist,sum))
lapply(mylist,function(x) x*20)
sapply(mylist,sum)
mapply(rep,1:4,4:1)



install.packages("janitor")

library(janitor)

library(dplyr)

getwd("E:\Study\LPU\B.TECH\3rd Year\6th Semester\INT232 - DATA SCIENCE TOOLBOX  R PROGRAMMING\R codes\FinData.csv")

clean<-clean_names(data)

colnames(clean)

tabyl(clean,employee_status)

clean %>% tabyl(employee_status) %>% adorn_pct_formatting(digits =2,affix_sign=TRUE)

clean %>% tabyl(employee_status, full_time) %>% adorn_totals()

clean %>% tabyl(employee_status, full_time) %>% adorn_totals(where = "col")

clean %>% tabyl(employee_status, full_time) %>% adorn_totals(where = c("row","col"))

clean %>% tabyl(employee_status, full_time) %>%
  + adorn_totals("row") %>%
  + adorn_percentages("row") %>%
  + adorn_pct_formatting() %>%
  + adorn_ns()

clean_x<-clean %>% remove_empty(whic=c("rows"))

clean_x<-clean %>% remove_empty(whic=c("cols"))

clean %>% get_dupes(first_name)

clean %>% get_dupes(first_name,certification)
