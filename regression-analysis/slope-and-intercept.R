plot(0, 0, type = "n",
     xlim = c(-10, 10),
     ylim = c(-10, 10))
abline(h = 0)
abline(v = 0)
# abline(a = 절편, b = 기울기)
abline(a = 0, b = 1)

# 절편에 따른 직선 변화
abline(a=1, b=1, col="yellow")
abline(a=2, b=1, col="red")
abline(a=5, b=1, col="red")
abline(a=-2, b=1, col="blue")
abline(a=-5, b=1, col="blue")

# 기울기에 따른 직선 변화
abline(a=0, b=2, col="red")
abline(a=0, b=3, col="red")
abline(a=0, b=0.5, col="red")
abline(a=0, b=-5, col="blue")
abline(a=0, b=-10, col="blue")
