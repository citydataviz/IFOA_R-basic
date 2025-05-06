install.packages('dplyr')
library(dplyr)
x <- data.frame(id=1:3, name = c("Alice", "Bob","Charlie"))
y <- data.frame(id=2:4, addr = c("StreetA","StreetB","StreetC")) 

#Inner Join
inner_join(x,y, by ="id")

#Left-Join
left_join(x,y, by ='id')

# Right-join 
right_join(x,y, by = 'id')

# Full-join 
full_join(x,y, by = 'id')

students <- data.frame(
  ID = c(101, 102, 103, 104),
  Name = c("Eva", "David", "Chloe", "Brian"),
  Major = c("Biology", "CompSci", "Physics", "CompSci")
)
enrollment <- data.frame(
  StudentID = c(101, 102, 102, 103, 105), # Note: 102 enrolled twice, 105 not in students
  Course = c("BIO101", "CS201", "MATH101", "PHY301", "CHEM101"),
  Grade = c("A", "B", "A", "C", "B")
)

inner_join(students,enrollment, by = c('ID'='StudentID'))
left_join(students,enrollment, by = c('ID'='StudentID'))
right_join(students,enrollment, by = c('ID'='StudentID'))
