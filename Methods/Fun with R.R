# Test

# create two vectors
x <- c(2, 4, 7, 12, 3, 29, 18, 25)
y <- c(3, 4, 5, 14, 6, 20, 10, 10)

# Create a plot of y is function of x
# y ~ x

plot(x, y)
plot(y ~ x)
linearmodel <- lm(y ~ x)
coef(linearmodel)
abline(coef(linearmodel))
       
