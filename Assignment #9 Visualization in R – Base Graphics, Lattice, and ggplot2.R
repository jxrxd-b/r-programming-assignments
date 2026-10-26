data("mtcars", package = "datasets")
head(mtcars)


# Scatter plot
plot(mtcars$mpg, mtcars$hp,
     main   = "Base: MPG vs. Horsepower",
     xlab   = "Miles Per Gallon",
     ylab   = "Horsepower")

# Histogram
hist(mtcars$mpg,
     main   = "Base: Distribution of MPG",
     xlab   = "Miles Per Gallon")


library(lattice)

# Conditional scatter plot (small multiples)
xyplot(hp ~ mpg | factor(cyl),
       data = mtcars,
       main = "Lattice: Horsepower vs. MPG by Cylinders")

# Box-and-whisker plot
bwplot(mpg ~ factor(cyl),
       data = mtcars,
       main = "Lattice: MPG by Cylinders")


library(ggplot2)

# Scatter plot with smoothing
ggplot(mtcars, aes(x = mpg, y = hp, color = factor(cyl))) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "ggplot2: Horsepower vs. MPG by Cylinders")

# Faceted histogram
ggplot(mtcars, aes(mpg)) +
  geom_histogram(binwidth = 2) +
  facet_wrap(~ cyl) +
  labs(title = "ggplot2: MPG Distribution by Cylinders")
