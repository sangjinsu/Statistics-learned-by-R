# 회귀분석을 하는 이유에 대하여여

plot(0, 0, type = "n",
     xlim = c(0, 10),
     ylim = c(0, 10))
abline(h = 0)
abline(v = 0)
points(x = c(2, 4, 6, 8),
       y = c(1, 6, 4, 8))
abline(a = 2, b = 0.5, col="blue")
abline(a = 1, b = 0.8, col="red")
