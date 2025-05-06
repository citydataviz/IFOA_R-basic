students

lapply(students[4:5], mean)
sapply(students[4:5], mean)

sapply(students[4:5], summary)

nrow(students)
ncol(students)
t(students)

apply(students, 2, mean)
apply(students[4:5], 2, mean)
apply(students[4:5], 1, sum)

nrow(iris)

head(iris, n=3)
tail(iris, n=2)

monthly_income <- c(3000,3200,3100,3050, 3300, 3150)
monthly_expenses <- c(2500,2600,2550,2400,2700,2500)

budget <- data.frame(month=1:6, income = monthly_income, expenses = monthly_expenses)
budget

budget$savings <- budget$income - budget$expenses
sapply(budget[ , c("income","expenses","savings")], mean)
