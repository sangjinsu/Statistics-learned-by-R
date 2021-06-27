mydata <- read.csv("https://www.theissaclee.com/ko/courses/rstat101/examscore.csv", header = TRUE)

mydata

head(mydata)

mydata[2, 3]
mydata[, 3]
mydata[, 4]
mydata$gender

# categorical data: ex) gender
# pie chart

mytable <- table(mydata$gender)
mytable
names(mytable) <- c("여자", "남자")
mytable

pie(mytable, main = "학생 성별 분포")
text(0.3, 0.3, "33.3%")
text(-0.2, -0.2, "66.7%")
