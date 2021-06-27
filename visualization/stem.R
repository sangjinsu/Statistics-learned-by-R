mydata <- read.csv("https://www.theissaclee.com/ko/courses/rstat101/examscore.csv", header = TRUE)

head(mydata)

stem(mydata$midterm)

stem(mydata$midterm, scale = 2)

stem(mydata$midterm, scale = 0.5)
