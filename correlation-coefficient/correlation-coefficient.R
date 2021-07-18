# 상관 계수 

x <- c(1, 3, 5)
y <- c(3, 5, 7)

mean(x) # 3
mean(y) # 5

sd(x) # 2
sd(y) # 2

cor(x, y) # 1

mydata <- read.csv("https://www.theissaclee.com/ko/courses/rstat101/examscore.csv", header = TRUE)
mydata

x_bar <- mean(mydata$midterm)
y_bar <- mean(mydata$final)
s_x <- sd(mydata$midterm)
s_y <- sd(mydata$final)

z_x <- (mydata$midterm - x_bar) / s_x
z_y <- (mydata$final - y_bar) / s_y
sum(z_x * z_y) / (length(mydata$student_id) - 1) 

cor(mydata$midterm, mydata$final)
