# 사용자 정의 함수
#  화씨와 섭씨 변환 공식
# (F - 32) * 5/9 = C

f <- c(67, 45, 92, 83, 70)

# method1
(f - 32) * 5/9

#method2
convFtoC <- function(temperatureF) {
  return ((temperatureF - 32) * 5/9)
}

convFtoC(f)


# 최빈값 사용자 정의 함수
x <- c(1,2,5,5,5,3,9,7,8,1,1,5)

table(x)
len <- length(table(x))
names(sort(table(x)))[len]

getMode <- function(values){
  len <- length(table(values))
  result <- names(sort(table(values)))[len]
  return (result)
}

getMode <- function(values){
  result <- names(sort(-table(values)))[1]
  return (result)
}

# 카테고리컬 변수 만들기 filter

x <- c(1, 3, 9, 7, 1)
y <- character(length = 5)
y <- c("first", "second", "third", "fourth", "fifth")

x[c(T, F, F, T, T)]
x[c(T, F)]
x[c(x < 3)]
x[c(x > 5)]

x[c(x <= 3)] <- 5 
x[x <= 3]

y[x <= 3] <- " <= 3 "
y[x > 3] <- " > 3 "
y

mydata <- read.csv("https://www.theissaclee.com/ko/courses/rstat101/examscore.csv", header = TRUE)
head(mydata)
summary(mydata$midterm)
y <- character(length = 30)
y[mydata$midterm < 49.75] <- "low"
y[mydata$midterm >= 49.75] <- "high"
mydata$highlow <- y
mydata

mytable <- table(mydata$highlow)
pie(mytable, labels = names(mytable),
    main = "Pie Chart of the grade variable")
