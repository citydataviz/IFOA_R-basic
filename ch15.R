library(bizstatp)
course

str(course)
mean(course$score)
mean(course$mid, na.rm = TRUE)

#Median 
median(course$score)
median(course$mid, na.rm = TRUE)

sd(course$score)

range(course$score)
min(course$score)
max(course$score)

# IQR 
IQR(course$score)
quantile(course$score, probs = c(0.25, 0.5, 0.75))
quantile(course$score)

library(ggplot2)

ggplot(data=course, mapping=aes(x=score)) + geom_histogram()

ggplot(data=course, mapping=aes(x=score)) + geom_histogram(binwidth = 10, color = 'white', fill = "blue")

ggplot(data= course, mapping=aes(y=score)) + geom_boxplot()

cor(course$mid, course$final, use = "pairwise.complete.obs")

ggplot(data=course, mapping=aes(x=mid, y=final)) + geom_point()

ggplot(data=course, mapping=aes(x=mid, y=final)) + geom_point() + geom_smooth(method = 'lm', se =FALSE, color='red')
