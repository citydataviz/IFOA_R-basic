lm_car 

library(tidyverse)
lm_cars <- lm(dist ~ speed, data = cars) 
print(coefficients(lm_cars))

plot(lm_cars)

sqrt(dist)

lm_cars_trans <- lm(sqrt(dist) ~ speed, data = cars)
coefficients(lm_cars_trans)

plot(lm_cars_trans)


