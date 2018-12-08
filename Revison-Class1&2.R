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
