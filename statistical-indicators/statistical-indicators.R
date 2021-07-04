## 평균과 중앙값 특성
# 평균이 극단적인 값에 중앙값 보다 더 민감
# 대칭 분포: 평균과 중앙값이 비슷
# 왼쪽으로 기운 분포(stew to left): 중앙값 > 평균
# 오른쪽으로 기운 분포(stew to right): 중앙값 < 평균

## boxplot 이론
# 예시 데이터: 1 2 3 4 5 6 7 8 9 10
# 중앙값: 5.5
# Quartiles(사분위수): Q1 = 3, Q2(중앙값) = 5.5, Q3 = 8   
# IQR: Interquartile range = Q3 - Q1
# 가상 울타리: 
#   오른쪽(upper fence): Q3 + 1.5 * IQR 
#   왼쪽(lower fence): Q1 - 1.5 * IQR
# 데이터 중에 울타리 안에서 가장 큰, 작은 데이터 포인트를 구한다.
# 가상 울타리 -> whisker (가장 큰, 작은 데이터 포인트) 로 변경

## boxplot 작성 예시
# 1 2 3 4 5 6 7 8 9 10 20
# median: 6
# Q1: 3.5 Q3: 8.5
# IQR = Q3 - Q1 = 5
# upper fence = 8.5 + 1.5 * 5 = 16
# lower fence = 3.5 - 1.5 * 5 = -4
# 울타리 안에서 가장 큰 값, 작은 값: 10, 1
# 20은 울타리 밖에 점으로 표시

## IQR
# 분포의 퍼짐을 측정하는 통계지표
# Interquartile range: Q3 - Q1

# 데이터셋 예시1
# 1 2 2 3 3 3 4 4 5
# median: 3 mean: 3
# Q2: 3, Q1: 2, Q3: 4
# IQR: 2

# 예시2
# 1 2 3 4 5 6 7 8 9
# median: 5 mean: 5
# Q2: 5, Q1: 3, Q3: 7
# IQR: 4

## 분산과 표준편차
# data set: 5 4 1 2 3
# n = 5, mean = 3, variance = 2.5, standard deviation = sqrt(2.5)
set.seed(1234)
x <- sample(1:10, 6)
mean(x)
sum((x - mean(x))^2)/(6-1)
var(x)
sqrt(var(x))

x <- rep(5, 10)
y <- c(1:10)
z <- c(3,4,5,6,7,4,5,6,5,5)

hist(x, breaks = 0:10)
hist(y, breaks = 0:10)
hist(z, breaks = 0:10)

sd(x)
sd(y)
sd(z)
