interaction term 

library(HistData)
library(tidyverse)
data("GaltonFamilies")

lm_galton_inter <- lm(childHeight ~ midparentHeight + gender + midparentHeight:gender, data=GaltonFamilies)
summary(lm_galton_inter)


lm_galton_fm_inter <- lm(childHeight ~ (father + mother) * gender, data= GaltonFamilies)
summary(lm_galton_fm_inter)

AIC 

lm_full <- lm(childHeight ~ (father+mother) * gender, data = GaltonFamilies)
#backward 
backward_model <- step(lm_full, direction = "backward", trace = 0 )
backward_model
summary(backward_model)

# forward 
lm_minimal <- lm(childHeight ~ 1 , data=GaltonFamilies)
scope <- (~father + mother +children+gender)
forward_model <-step(lm_minimal, direction = "forward", scope=scope, trace=0)
summary(forward_model)
