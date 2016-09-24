require(ggplot2)
data("diamonds")
head(diamonds)

class(diamonds)

hist(diamonds$carat)
hist(diamonds$carat, main="Carat Histogram", xlab = "Carat")

plot(diamonds$carat, diamonds$price)
plot(price ~ carat, data = diamonds)
