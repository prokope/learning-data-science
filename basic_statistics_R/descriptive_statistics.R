# install.packages("UsingR")
library("UsingR")

data("south", "crime", "aid")

data <- c(60, 85, 72, 59, 37, 75, 93, 7, 98, 63, 41, 90, 5, 17, 97)
# Creating a stem and leaf plot to visualize ordered data:
stem(data, scale = 2)

data <- c(80, 82, 88, 91, 91, 95, 95, 97, 98, 101, 106, 106, 109, 110, 111)
# Creating a histogram plot
hist(data)

# Using rnorm to generate random numbers around a mean value,
# following a bell-shaped distribution.
# Most numbers stay close to the mean,
# while fewer appear far away (Controlled by std deviation)
x = rnorm(100, 50)
hist(x)

y = rnorm(100)
hist(y)

# Now I will analyze some datasets that I imported earlier.
# The exercise asks whether they are skewed or symmetric,
# and which of them contain outliers.
# First, I will analyze them by creating a histogram,
# and then by using a boxplot to identify outliers.

par(mfrow = c(1, 2)) # 1 row, 2 columns
hist(south)
boxplot(south)

# Answer 1: The dataset (south) contains some outliers.
# Because some values are greater than the upper fence (Q3 + 1.5IQR).

# Is it skewed or symmetric?
# Remembering: The dataset is skewed when whose values are not evenly distributed.
# One side of the distribution stretches farther than the other,
# Creating an asymmetric shape.

# Answer 2: Yes, it is skewed.
# We can see this by looking at the histogram,
# because there are many more values concentrated in the lower range (5 - 15),
# while a few larger values stretch the distribution to the right.
