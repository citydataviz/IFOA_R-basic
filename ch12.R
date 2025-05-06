course

install.packages('devtools')
devtools::install_github("kilhwan/bizstatp")
library(bizstatp)

course
summary(course)

plot(course[ ,5:8])
