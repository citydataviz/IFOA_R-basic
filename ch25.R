# What factors influence the sales of child Car Seats

install.packages('ISLR') 
library(ISLR)
library(tidyverse)
library(corrplot)

data("Carseats")
str(Carseats)

colSums(is.na(Carseats))

numeric_vars <- Carseats %>% select_if(is.numeric)
cor_matrix <- cor(numeric_vars)

corrplot.mixed(cor_matrix, lower = 'number', upper = 'ellipse')

initial_model <- lm(Sales ~ CompPrice + Income + Advertising + Population + Price + ShelveLoc + Age + Education + Urban + US, data = Carseats)
summary(initial_model)


plot(initial_model)

final_model <- step(initial_model, direction = 'backward', trace = 0)
summary(final_model)
