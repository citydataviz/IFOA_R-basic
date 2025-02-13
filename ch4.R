# Clear our workspace
rm(list = ls())
# Check our working directory
getwd()


# Let's start with something familiar - basic arithmetic

5 + 3    # Addition
10 - 4   # Subtraction
6 * 2    # Multiplication
15 / 3   # Division
2 ^ 3    # Exponentiation
16 %% 3  # Modulus (remainder)
16 %/% 3 # Integer division


# Calculate monthly budget
monthly_income <- 2000
rent <- 800
utilities <- 150
groceries <- 300
savings <- monthly_income - (rent + utilities + groceries)
print(paste("I can save $", savings, "per month"))


my_age <- 20
favorite_number = 7

# Multiple assignments
height <- width <- 10

# Naming conventions
camelCase <- 1
snake_case <- 2
CONSTANT_VALUE <- 3

video_views <- 15000
video_likes <- 1200
video_comments <- 300

engagement_rate <- (video_likes + video_comments) / video_views * 100
print(paste("Engagement rate:", round(engagement_rate, 2), "%"))



# Numeric (floating point)
temperature <- 23.5
class(temperature)

# Character (text)
weather <- "sunny"
class(weather)

# Logical (TRUE/FALSE)
is_weekend <- FALSE
class(is_weekend)

# Integer (whole numbers)
days_in_semester <- 112L
class(days_in_semester)

# Complex numbers
complex_num <- 3 + 2i
class(complex_num)



game_title <- "Minecraft"
playing_time <- 120.5  # hours
completed_achievements <- 25L
is_multiplayer <- TRUE

# Combining information
game_summary <- paste(
  "Game:", game_title,
  "| Time played:", playing_time, "hours",
  "| Achievements:", completed_achievements,
  "| Multiplayer:", if(is_multiplayer) "Yes" else "No"
)
print(game_summary)


num_single <- 10  
class(num_single)
length(num_single)

Inf * 5  
x_sample <- c(7, 9, 4, 6, 13, 4, 1, 11)
x_sample[which(x_sample > 10)]
x_sample[which.max(x_sample)]

x_sample[order(x_sample)]
