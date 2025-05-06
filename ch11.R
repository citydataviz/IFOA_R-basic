tidyverse 

install.packages('tidyverse')
library(tidyverse)

mpg

#filter
filter(mpg, manufacturer == "hyundai")

filter(mpg, manufacturer == "hyundai", cty >= 20)

a <- filter(mpg, manufacturer == "hyundai", year == 2008)
slice(a, 1:3) 

arrange(mpg, cty) 

# Select 
select(mpg, manufacturer, model, cty, hwy)

select(mpg, company = manufacturer, city =cty)

# mutate

mpg %>%
  mutate(total_mpg = cty+hwy,
         avg_mpg = (cty+hwy)/2) %>%
  select(manufacturer, model, cty, hwy, total_mpg, avg_mpg)

# summarize
summarize(mpg, mean_cty = mean(cty))

mpg %>%
  group_by(manufacturer) %>%
  summarize(mean_cty = mean(cty)) %>%
  arrange(desc(mean_cty))
