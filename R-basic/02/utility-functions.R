#
library(googleVis)
Fruits

#
a <- c(1, 2, 3, 4, 5)
length(a)
NROW(a)
length(Fruits)
class(Fruits)
nrow(Fruits)
ncol(Fruits)

#
sort(Fruits$Sales, decreasing = TRUE)

#
aggregate(Sales~Year, Fruits, sum)
aggregate(Sales~Fruit+Year, Fruits, max)

#
mat1 <- matrix(c(1,2,3,4,5,6), nrow=2, byrow=T)
mat1
apply(mat1, 1, sum)

#
subset(Fruits, select = c(Sales, Profit))
lapply( subset(Fruits, select = c(Sales, Profit) ), max)

#
tmp <- sapply(Fruits[, c(4, 5)], max)
class(tmp)

#
attach(Fruits)
tapply(Sales, Fruit, sum)
detach(Fruits)

#
vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c(10, 20, 30, 40, 50)
vec3 <- c(100, 200, 300, 400, 500)
mapply(sum, vec1, vec2, vec3)

#
library(stringr)
fruits <- c("apple", "Apple", "banana", "pineapple")
str_detect(fruits, "a")
str_detect(fruits, "^a") # a로 시작하는
str_detect(fruits, "e$") # e로 끝나는
str_detect(fruits, "^[aA]")

str_c("Fruits: ", fruits)
paste("Fruits: ", fruits)

str_length('hello')
str_length(c('hello'))
str_length(fruits)

char <- c('apple', 'Apple', 'APPLE', 'banana', 'grape')
grep('apple', char)

#
library(sqldf)

sqldf('select * from Fruits where Fruit = \'Apples\' ' )
sqldf('select * from Fruits limit 3')
sqldf('select * from Fruits order by Year')
sqldf('select Fruit, avg(Sales) from Fruits group by Fruit')
