1 + 1
3 - 1
2 * 3
4 / 2
4 ^ 2
sqrt(16)
9 %% 4  # 나머지
9 %/% 4 # 몫

x <- 2
y <- 3

x + y
x / y

x <- c(1, 2) # vector
x

x + 1

y <- c(3, 4)

x + y 

# ":" 명령어
x <- c(1:10)
y <- c(1:5)

x + y 

y <- c(1, 2, 3)
x + y 

x <- seq(3, 5, by = 0.1)
y <- seq(3, 5, length.out = 4)

# [] 명령어
x <- 1:10
x[3]

x[c(3, 5, 6)]
x <- matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE)
x + 3
x[3,1]
x[c(2,1), 1]
x[c(1, 2, 3), 1]
x[, 1]
x[, c(1,2)]
x[ , ]

mydata <- read.csv("https://www.theissaclee.com/ko/courses/rstat101/examscore.csv", header = TRUE)
mydata
