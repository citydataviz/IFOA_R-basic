name <- c('mark','kim','peter','mateo','james')
grade <- c(1,4,3,2,1)
gender <- c("M","F","M","F","M")

student <- data.frame(name,grade,gender )
student

midterm <- c(74,82,67,89,92)
final <-c(91,77,88,78,86)

scores <- cbind(midterm,final)
scores

rt <- c(TRUE, FALSE, FALSE, TRUE, FALSE)

students <- data.frame(student, scores, retake = rt)
students

total.scores <- midterm+final
students_with_total <- cbind(students, total.scores)
students_with_total

a <- data.frame(name = "Jane", grade = 4, gender = "F", midterm = 90, final=85, retake = FALSE, total.scores = 175)

students_extended <- rbind(students_with_total, a)
students_extended

students_extended$gender

students_extended[["midterm"]]

students_extended[[5]]

high_midterm <- students_extended[students_extended$midterm >= 80,]
high_midterm

