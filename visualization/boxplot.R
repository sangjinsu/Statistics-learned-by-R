mydata <- read.csv("https://www.theissaclee.com/ko/courses/rstat101/examscore.csv", header = TRUE)

boxplot(mydata$midterm)
boxplot(mydata$midterm, 
        main = "시험 점수 분포",
        xlab = "점수",
        horizontal = T)

mydata$midterm[1] <- 100

boxplot(mydata$midterm, 
        main = "시험 점수 분포",
        xlab = "점수",
        horizontal = T)

boxplot(mydata$midterm, 
        mydata$final,
        main = "시험 점수 분포",
        xlab = "점수",
        ylab = "시험 종류",
        names = c("중간고사","기말고사"),
        horizontal = T)
