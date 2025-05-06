MLR
install.packages('HistData')
library(HistData)
library(tidyverse)
library(corrplot)

data("GaltonFamilies")
numeric_data <- select(GaltonFamilies, -family, -childNum, -gender)
cor_matrix <- cor(numeric_data)
corrplot.mixed(cor_matrix)

lm_galton_simple <- lm(childHeight ~ midparentHeight, data = GaltonFamilies)
summary(lm_galton_simple)

lm_galton_multiple <- lm(childHeight ~ midparentHeight + gender, data=GaltonFamilies)
lm_galton_multiple

summary(lm_galton_multiple)

ggplot(GaltonFamilies, aes(midparentHeight, childHeight, color = gender)) + geom_point(aes(shape = gender), alpha= 0.5)  + geom_line(aes(y=lm_galton_multiple$fitted.values), size = 1)
plot(lm_galton_multiple)

lm_gallon_fm <- lm(childHeight ~ father + mother + gender, data=GaltonFamilies)
lm_gallon_fm
summary(lm_gallon_fm)

lm_gallon_fmc <- lm(childHeight ~ father + mother + gender + children, data=GaltonFamilies)
summary(lm_gallon_fmc)
