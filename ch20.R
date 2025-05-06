# ANOVA 
bizstatp 

library(bizstatp)
course
str(course)

course_omitted <- na.omit(course)
aggregate(score ~ year, data = course, mean)

aov()

course_omitted$year <- factor(course_omitted$year, ordered =F)
result <- aov(score~ year, data=course_omitted)
summary(result)

Independence , normality , homogeneity of variances. 

plot(result)

shapiro.test(result$residuals)
bartlett.test(score ~ year, data=course_omitted)
           
height <- c(15.1, 14.8, 15.5, 14.9, 15.2, 
            12.5, 12.8, 12.0, 12.3, 12.9,
            16.0, 16.5, 15.8, 16.3, 16.1)

water_type <- factor(rep(c("Tap","Distilled","Rain"), each = 5))
plant_data<- data.frame(height, water_type)

aggregate(height ~ water_type, data=plant_data, mean)

plant_result <- aov(height ~ water_type, data= plant_data)
summary(plant_result)



