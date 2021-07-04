mydata <- read.csv("https://www.theissaclee.com/ko/courses/rstat101/examscore.csv", header = TRUE)

hist(mydata$midterm)
hist(mydata$midterm, breaks = c(0, 20, 40, 60, 80))
hist(mydata$midterm, breaks = c(0:4)*20)
hist(mydata$midterm, breaks = c(0:16)*5, main = "중간고사 분포",
     xlab = "중간고사 점수",
     ylab = "빈도수")
