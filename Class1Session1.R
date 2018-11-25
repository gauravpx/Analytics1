Women
women

x6
set.seed(1234)
(x6 = sample(1:50))
sort(x6)
x=c(1,2,3,4,5,6,7,8,9,10)
sort (x)
x(2,3) <- 2;x
x1 = x(1:2);x1

(x = seq(1,5, lenght.out = 15))
?distribution
(x = rnorm(100000))

x = c(2, 4, 6)        
x = seq(1:100)
(x)
(x[2:4])
plot(x)
plot(density(x))
plot(hist(x))

x= rnorm(100000)
plot(density(x))
plot(hist(x))
plot(hist(x),freq = F)
plot(hist(x),break =10)

x1= rnorm(100, 10,10)
plot(x1)
plot(density(x1))
summary(x1)
dev(x1)
hist(x1)
quantile(x1,seq(0.1,.09))

#Matrix
100:111
length(100:111)
matrix(1,ncol=3, nrow=4)
(m1 = matrix(100:111, nrow=4))
(m1 = matrix(100:111, ncol=3, byrow=T))
m1[1,1:2]
m1[1,]
class(m1)
attributes(m1)
dim(m1)
m1

# access elements of matrix
m1[1,]; m1[,-1]
#two commands at the same time
m1[,1]
m1[,1, drop=F] # printing column is coloumn format
m1[c(1,3),]
m1[-c(1,3),]
m1[,-c(1,3), drop=F]

m1[m1> 105 & m1 < 108]  #values above 105 and below 108

#names of cols and rows
paste("c","D",sep="-")
paste("c",1:100,sep="-")
(colnames(m1) = paste('C',1:3, sep=' ')) # assigining column name to each col
(rownames(m1) = paste('R',1:4, sep=' '))
attributes(m1)
m1[,1]

# Vector to matrix----
(m3= 1:24)
dim(m3)= c(6,4)
m3

#access to elements----
m3[1:9]     # just notice how elements are stored in matrix


#Modify martrix
m3[2,2] = 10
m3
rbind(m3,m3)
cbind(m3,m3)
cbind(m3, c(55,65,75,85,95,95,95))

m3

#row wise col wise summary----

colSums(m3)
rowSums(m3)
(colnames(m3) = paste('C',1:4, sep=' ')) # assigining column name to each col
(rownames(m3) = paste('R',1:6, sep=' '))
colSums(m3)
rowSums(m3)

sweep(m3, MARGIN = 1, STATS = c(2,3,4,5,6,7), FUN="+") # margin=1 means rowwise, 2 means col wise , add 2 to row1, 3 to row2......
sweep(m3, MARGIN = 1, STATS = c(2,3,4,5,6,7), FUN="*")
m3


#addmargin----
addmargins(m3,margin=1,sum)  #prints sum of the rows
addmargins(m3,margin=2,sum)  #prints sum of the col

m4 = addmargins(m3,c(1,2), list(list(mean,sum,max), list(var,sd)))
addmargins(m3,c(1,2), list(list(round(mean, digits = 1),sum,max), list(var,sd)))
round(m4,1)
?addmargins

#bookmarks----
#Dataframes
#create DataFrames----
df1= data.frame(rollno, sname, gender, marks1, marks2, course)

#create vectors to dataframes
(rollno = 1:30)
(sname = paste('student',1:30,sep='-'))
(course = sample(c('BBA','MBA')))
(course = sample(c('BBA','MBA'), size=30, replace=T))
(gender = sample(c('M','F'), size=30, replace=T))
(gender = sample(c('M','F'), size=30, replace=T, prob=c(.7,.3))) #assigning prob to male or female
marks1 = floor(rnorm(30,mean=50,sd=10))
marks1
marks2 = ceiling(rnorm(30,mean= 50,sd=10))
table(gender)
prop.table(table(gender))
rollno;course;sname;gender;marks1;marks2

#create DF
df1= data.frame(rollno, sname, gender, marks1, marks2, course, stringsAsFactors = F)
df
str(df1)
head(df1)
head(df1, n=3) #top 3 rows
tail(df1) #last 6 rows
class(df1) #df
summary(df1) #summary
(df1$gender = factor(df1$gender))
df1$course = factor(df1$course)
summary(df1)
#df1$name = as.character(df1$name)
str(df1)
boxplot(marks1 ~ gender + course, data=df1)
head(df1[1:10,])
head(df1[,1])
names(df1)
aggregate(df1$marks1, by=list(df1$gender), FUN=sum) # sum of marks of F,M
aggregate(marks1~ gender, data=df1, FUN=sum)
aggregate(marks1~ course, data=df1, FUN=sum)


#Factors----

(grades = sample(c('A','B','C','D'), size=30, replace=T, prob=c(.3,.2,.4,.1)))
summary(grades)
table(grades)
(gradesfactor = factor(grades))
summary(gradesfactor)

(gradesfactorOrderedLevels = factor(grades, ordered=T, levels=c('D','C','B','A')))
gradesfactor
pie(c(10,15,17))
pie(summary(gradesfactorOrderedLevels))
barplot(summary(gradesfactorOrderedLevels))
barplot(summary(gradesfactorOrderedLevels), col=1:4)
