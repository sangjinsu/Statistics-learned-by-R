mydata <- read.csv("https://www.theissaclee.com/ko/courses/rstat101/examscore.csv", header = TRUE)


# lm(): linear model 회귀분석은 linear 모델 중 하나입니다.
# lm(회귀식 혹은 모델식, 데이터)

#lm(기말고사 = 기울기 + 중간고사 * 인터셉트 + noise,
#       데이터 = mydata)

#lm(기말고사 = 중간고사
#       데이터 = mydata)

result = lm(final ~ midterm, mydata)

summary(result)
result$coefficients


plot(mydata$midterm, mydata$final, asp = 1,
     xlab = "중간고사", 
     ylab = "기말고사",
     main = "시험점수 산점도")
abline(result$coefficients)
result$residuals # 잔차
summary(result$residuals)
hist(result$residuals)

par(mfrow = c(2,2))
plot(result)
