# Linear Regression

library(tidyverse)
cars
str(cars)
summary(cars)

ggplot(data=cars, aes(x=speed, y=dist)) + geom_point() + labs(title="stopping distance vs speed")

lm_cars <- lm(dist ~ speed, data = cars) 
lm_cars

ggplot(data=cars, aes(x=speed, y=dist)) + geom_point() + geom_smooth(method = "lm", se = FALSE)
  labs(title="stopping distance vs speed")

summary(lm_cars)
  
new_data <- data.frame(speed=20)
predict(lm_cars, newdata= new_data)

new_data_multiple <- data.frame(speed=c(10,20,25))
predict(lm_cars, newdata= new_data_multiple)

  