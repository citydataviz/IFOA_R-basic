# Is the average 4th grader height in 2020 greater than 142cm ? 
x <- c(142.5, 138.9, 139.6, 148.2, 152.9, 129.6, 143.5, 151.3)
shapiro.test(x)
t.test(x, mu = 142, alternative = "greater")


var.test() 

x2010 <- c(139.4 , 139.8, 137.2 , 149.2, 151.2, 131.8, 141.5, 152.3)
x2020 <- c(142.5, 138.9, 139.6, 148.2, 152.9, 129.6, 143.5, 151.3)

shapiro.test(x2010)
shapiro.test(x2020)

var_test <- var.test(x2010,x2020)
var_test

t.test(x2010,x2020, alternative = "two.sided", var.equal = TRUE)

FALSE 

# Is the new process diameter smaller than the old one? 
x_old <- c(5.2,4.7,5.0,5.3,4.9,4.5,5.6,5.0,5.1,4.8,5.5,4.1)
x_new <- c(4.6,4.4,4.6,4.7,4.5,4.3,4.1,4.7,4.5,4.2)

shapiro.test(x_old)
shapiro.test(x_new)

var.test(x_old,x_new)

t.test(x_old, x_new, alternative = "greater", var.equal = FALSE)

# Paired T-test 

paired=TRUE 

# Did student scores improve after learning? 

x_before <- c(74,66,64,60,58,72,67,78,77,79)
x_after <- c(89,80,76,65,54,66,84,76,86,79)

d <- x_before - x_after 
shapiro.test(d)

t.test(x_before, x_after, alternative = 'less', paired = TRUE)
