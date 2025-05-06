IF 

temperature <- 5 
if (temperature < 0) {
  print("It's freezing")
} else {
  print("It's above freezing!")
}

For 
daily_study_hours <- c(2,3,4,1.5, 3.5)

for (hours in daily_study_hours) {
  print(paste("Study hours today:", hours))
}

farhenheit_to_celcius <- function(fahrenheit) {
  celcius <- (fahrenheit - 32) * (5/9)
  return(celcius)
}

farhenheit_to_celcius(68)


print(R.version.string)

if (require(ggplot2)) {
  install.packages("ggplot2")
  library(ggplot2)
} else {
  library(ggplot2)
}

packageVersion("ggplot2")
