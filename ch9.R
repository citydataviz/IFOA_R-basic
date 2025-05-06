df <- read.csv('/Users/josephlee/Downloads/suicide_rates.csv')
nrow(df)
head(df)

install.packages('readxl')
library(readxl)
df2 <- read_excel('/Users/josephlee/Downloads/suicide_rates.xlsx', sheet = "sheet1")
nrow(df2)
head(df2)

csv_url <- "https://raw.githubusercontent.com/citydataviz/IFOA_R-basic/refs/heads/main/data/suicide_rates.csv"
df_web <- read.csv(csv_url)
head(df_web)

