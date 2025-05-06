Null  (H0) 
Alternative(H1) 

Total = 10 
H = 8 
a = 0.1 

binom.test 
observed_heads <- 8 
total_flips <- 10 

p_null <- 0.5 
alpha <- 0.1 

test_result <-binom.test(x=observed_heads, n = total_flips, p = p_null, alternative = "two.sided")
print(test_result)

p = 0.6 
total  = 20 
pass = 15 

observed_passes <- 15 
total_students<-20
p_old <-0.6
alpha<- 0.05

study_result <- binom.test(x=observed_passes, n=total_students, p=p_old, alternative = "two.sided")
print(study_result)


