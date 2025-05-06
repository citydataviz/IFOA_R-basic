
# From ch17, 
observed_passes <- 15 
total_students<-20
p_old <-0.6
alpha<- 0.05

study_result <- binom.test(x=observed_passes, n=total_students, p=p_old, alternative = "two.sided")
print(study_result)

prop.test() 
z-test 

prop_test_result <- prop.test(x = observed_passes, n = total_students, p = p_old, alternative =  "two.sided")
print(prop_test_result)

Chi-squared 

1) Goodness-of-Fit 
2) Test of Independence 

observed_counts_color <- c(23, 36, 31)
expected_props_color <- c(1/3,1/3,1/3)

result_color <- chisq.test(x=observed_counts_color, p=expected_props_color)

install.packages('vcd')
library(vcd)
install.packages('grid')

data(Arthritis)

tti <- xtabs(~ Treatment + Improved, data= Arthritis)
print(tti)

result_arthritis <- chisq.test(tti)
result_arthritis
