rm(list = ls())

quiz_score <- 85

length(quiz_score)

daily_steps <- c(7500, 8200, 6800, 9000, 10000, 7200, 8500)
length(daily_steps)

exam_scores <- c(78,85,92)
extra_credit <- c(2,3,0)

total_scores <- c(exam_scores, extra_credit)
total_scores


seq()

days_in_month <- 1:30
days_in_month

study_hours <- seq(2,12, by = 2)
study_hours


rep()

weekdays <- rep("Study Day", times=5)
weekdays
weekend <- rep("Relax Day", times=2)
weekend
week_schedule <- c(weekdays, weekend)
week_schedule

item_prices <- c(3.50, 4.25, 2.75, 5.00)
quantities <- c(2,3,1,4)

total_cost <- item_prices*quantities
total_cost

prices_with_tax <- item_prices + 0.50
prices_with_tax


daily_bonus <- 1:5
two_weeks <- rep(c(10,20,30,40,50), times = 2)
two_weeks

adjusted_points <- two_weeks + daily_bonus
adjusted_points

study_hours_week <- c(2,3,4,2.5,3,5,0)
total_study <- sum(study_hours_week)

average_study <- mean(study_hours_week)
average_study

max_study <- max(study_hours_week)
day_max_study <- which.max(study_hours_week)

sleep_hours <- c(7,6,8,5,7.5,6.5,8)
sleep_ranks <- rank(sleep_hours)
sleep_ranks

sorted_sleep <- sort(sleep_hours)

order_sleep <- order(sleep_hours)
order_sleep
