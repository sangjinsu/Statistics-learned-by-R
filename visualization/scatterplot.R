mydata <- read.csv("https://www.theissaclee.com/ko/courses/rstat101/examscore.csv", header = TRUE)

plot(mydata$midterm, mydata$final,
     main = "시험점수 산점도",
     xlab = "중간고사",
     ylab = "기말고사", 
     asp = 1)
