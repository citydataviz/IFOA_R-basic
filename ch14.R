bizstatp

library(bizstatp)
course
head(course)

xtabs(~ column, data= dataframe)

freqYear <- xtabs(~year, data=course)
proportions(freqYear)

round(proportions(freqYear)*100, digits=2)

library(ggplot2)
ggplot(data=course, mapping = aes(x = year)) + geom_bar()
ggplot(data=course, mapping = aes(x = year)) + geom_bar(fill = 'green')

ggplot(data=course, mapping = aes(x = year, y = after_stat(prop), group=1 )) + geom_bar()

xtabs(~ gender, data=course)

ggplot(data=course, mapping=aes(x = gender))+ geom_bar()

year + gender 

xtabs(~ var1 + var2, data=course)
freqGender<- xtabs(~gender + year, data=course)

proportions(freqGender, margin = 1)
proportions(freqGender, margin = 2)

ggplot(data=course, mapping = aes(x=year, fill = gender)) + geom_bar()
ggplot(data=course, mapping = aes(x=year, fill = gender)) + geom_bar(position = "dodge")

major vs gender 

xtabs(~major + gender, data=course)
ggplot(data=course, aes(x=major, fill = gender))+geom_bar(position = "dodge")


