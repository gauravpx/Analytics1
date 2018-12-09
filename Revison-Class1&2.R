#Vector

# ND with mean 80 , sd 10
sales=rnorm(100,mean =80, sd=10)
(sales)
plot(sales)
plot(density(sales))

sales= trunc(sales)
plot(density(sales))
(sales)
boxplot(sales)
mean(sales)
hist(sales, break = 10)

#matrix
m1= matrix(100:123, ncol=3)
dim(m1)
m1[ ,1]
m1[1,]
head(m1)

#DF
sname = paste('Student',1:30,sep='_')
sname
(marks = trunc(runif(30,50,90)))
(gender = sample(c('M','F'), replace=T, size=30, prob=c(.7,.3)))
df1 = data.frame(sname, marks, gender)
head(df1)
library(dplyr)
df1 %>% group_by(gender) %>% summarise(mean(marks), n(), min(marks), max(marks))
?arrange
arrange (df1 , desc(marks))

# misssing values at random location install mice when you look back-big library----
df1[sample(1:30, size =5), 2] = NA
(df1)
complete.cases(df1)
sum(complete.cases(df1))   # shows rows with complete dataset
sum(!complete.cases(df1))   # ! shows rows with imncomplete dataset
df1[!complete.cases(df1),2] = mean(df1$marks, na.rm=T)
mean(df1$marks, na.rm=T)
df1

df1[sample(1:30, size =5), 2] = NA
df2 = df1[complete.cases(df1),]
df2
#pipe symbol filters the data and then performs steps mentioned in later command on the data
df1 %>% arrange(desc(marks)) %>% select(sname, marks)
df1 %>% sample_n(3)
df1 %>% sample_frac(.3)

# Linear Reggression
# Multiple Regression
# Missing values

# Handling Missing Values----
(x = c(NA, 1, NA, 2,3, NA))
is.na(x)
sum(is.na(x))
sum(c(T,F,T,F,F))
mean(x)
mean(x, na.rm=T)
x
x[is.na(x)] = mean(x, na.rm=T)
x
x1 = c(4,6,8,9)
length(x1[x1 >= 6])
sum(x1 >= 6)
x1 >= 6

x2 = rnorm(100000, mean=50, sd=5)
length(x2)
posn=sample(100000, size=30)
x2[posn] = NA
sum(is.na(x2))

install.packages("VIM")
library(VIM)

head(sleep)
dim(sleep)
complete.cases(sleep)
sum(complete.cases(sleep))   # shows rows with complete dataset
sum(!complete.cases(sleep))   # ! shows rows with imncomplete dataset
sleep[complete.cases(sleep),]
sleep[!complete.cases(sleep),]
colSums(is.na(sleep))
rowSums(is.na(sleep))

install.packages("mice")
library(mice)
