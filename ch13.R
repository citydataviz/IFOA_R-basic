# ggplot2

install.packages('ggplot2')
library(ggplot2)
mpg

displ , hwy

ggplot(data = mpg, mapping = aes(x=displ, y = hwy)) + geom_point()

ggplot(data = mpg, mapping = aes(x=displ, y = hwy)) + geom_point() + geom_smooth()

mpg$class
ggplot(data = mpg, mapping = aes(x=displ, y = hwy, color = class)) + geom_point()

mpg$drv
ggplot(data = mpg, mapping = aes(x=displ, y = hwy, shape = drv)) + geom_point()

ggplot(data = mpg, mapping = aes(x=cty, y = hwy, color = displ)) + geom_point()

ggplot(data = mpg, mapping = aes(x=displ, y = hwy)) + geom_point(mapping = aes(color=drv)) + geom_smooth()

faceting
facet_wrap

ggplot(data=mpg, mapping = aes(x = displ, y = hwy)) + geom_point() + facet_wrap(~class, nrow = 2)

