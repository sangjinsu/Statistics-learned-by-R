mydata <- read.csv("https://www.theissaclee.com/ko/courses/rstat101/examscore.csv", header = TRUE)
head(mydata)

x_bar <-  mean(mydata$midterm)
y_bar <- mean(mydata$final)
my_corr <- cor(mydata$midterm, mydata$final)

# 종횡의 비율 y/x
# plot 옵션 https://hodubab.tistory.com/304
plot(mydata$midterm, mydata$final, asp = 1,
     xlab = "중간고사", 
     ylab = "기말고사",
     main = "시험점수 산점도")

# paste: 두 개 값 문자열로 붙이기
# adj: 1번일 때 오른쪽 정렬
title(sub = paste("상관계수: ", round(my_corr, 4)),
      adj = 1, col.sub = "red")

abline(v = x_bar)
abline(h = y_bar)

# 평균값 빼기
plot(mydata$midterm - x_bar, mydata$final - y_bar, asp = 1,
     xlab = "중간고사", 
     ylab = "기말고사",
     main = "시험점수 산점도")

title(sub = paste("상관계수: ", round(my_corr, 4)),
      adj = 1, col.sub = "red")

abline(v = 0)
abline(h = 0)

s_x <- sd(mydata$midterm)
s_y <- sd(mydata$final)

z_x <- (mydata$midterm - x_bar) / s_x
z_y <- (mydata$final - y_bar) / s_y

# 표준 편차로 나누기
plot(z_x, z_y, asp = 1,
     xlab = "중간고사", 
     ylab = "기말고사",
     main = "시험점수 산점도")

title(sub = paste("상관계수: ", round(my_corr, 4)),
      adj = 1, col.sub = "red")

abline(v = 0)
abline(h = 0)

# 양수와 음수인지 나타냄냄
sign(z_x * z_y)
# 곱이 음수이면 파란색, 양수이면 빨간색
plot(z_x, z_y, asp = 1,
     xlab = "표준 중간고사 점수", 
     ylab = "표준 기말고사 점수",
     main = "중간, 기말고사 표준점수 분포",
     col = c("blue", "red")[as.factor(sign(z_x * z_y))])
title(sub = paste("상관계수: ", round(my_corr, 4)), adj = 1, col.sub = "red")
abline(v = 0)
abline(h = 0)

# 원점에서 떨어진 만큼 원 크기로 나타냄 
plot(z_x, z_y, asp = 1,
     xlab = "표준 중간고사 점수", 
     ylab = "표준 기말고사 점수",
     main = "중간, 기말고사 표준점수 분포",
     col = c("blue", "red")[as.factor(sign(z_x * z_y))],
     cex = abs(z_x * z_y))
title(sub = paste("상관계수: ", round(my_corr, 4)), adj = 1, col.sub = "red")
abline(v = 0)
abline(h = 0)
