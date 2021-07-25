# R을 이용한 회귀직선 구하기

plot(0, 0, type = "n",
     xlim = c(0, 10),
     ylim = c(0, 10))
abline(h = 0)
abline(v = 0)
points(x = c(2, 4, 6, 8),
       y = c(1, 6, 4, 8))

abline(a = 2, b = 0.5, col="blue")
abline(a = 1, b = 0.8, col="red")

# RSS = sum((y_i - y_i_hat)^2)1
y_i_hat <- c(2, 4, 6, 8) * 0.5 + 2 # 직선 1
y_i_hat
y_i <- c(1, 6, 4, 8)
sum((y_i - y_i_hat)^2) # 13

y_i_hat <- c(2, 4, 6, 8) * 0.8 + 1 # 직선 2
y_i_hat
y_i <- c(1, 6, 4, 8)
sum((y_i - y_i_hat)^2) # 9.4

RSS <- function(par){
  intercept <- par[1]
  slope <- par[2]
  y_i_hat <- c(2, 4, 6, 8) * slope + intercept
  y_i <- c(1, 6, 4, 8)
  sum((y_i - y_i_hat)^2)
}

RSS(c(2, 0.5))
RSS(c(1, 0.8))
RSS(c(1, 0.8))

# optim 이 계속 반복하여 값을 찾음
result <- optim(par = c(2, 0.5), fn = RSS)
result

abline(a = 0.0005164763, b = 0.9499521173, col="orange")
