library(bizstatp)
library(ggplot2)
head(course)

str(course)

tapply / aggregate 

tapply(course$score, course$gender, mean)

aggregate(score ~ gender, data = course, mean)

aggregate(score ~ gender, data = course, median)
aggregate(score ~ gender, data = course, sd)

aggregate(score~ gender, data=course, function(x)
  c(n = length(x),
    mean = mean(x),
    median = median(x),
    sd = sd(x),
    mad = mad(x))
  )

course_omitted <- na.omit(course)
aggregate(score~ gender, data=course_omitted, function(x)
  c(n = length(x),
    mean = mean(x),
    median = median(x),
    sd = sd(x),
    mad = mad(x))
)

ggplot(course, aes(x=gender, y=score)) + geom_boxplot()

notches 

ggplot(course, aes(x=class, y=score)) + geom_boxplot(notch = TRUE)

ggplot(course, aes(x=class, y=score, fill = gender)) + geom_boxplot(notch = TRUE)



