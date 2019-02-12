#  remove WS
rm(list = ls())

# Binomial Distribution
rbinom(5, size = 10, prob = 0.2)

# If we set size=1, we will be simulating random samples from the corresponding
# Bernoulli distribution
rbinom(10, size = 1, prob = 0.2)

# Now suppose that we want to know the probability of observing 3 out of 10
# people affected by the disease: P(X = 3). Then we need probability mass function
# dbinom(), which returns the probability of a specific value:
dbinom(3, size = 10, prob = 0.2)

# Poisson Distribution Suppose that on average 4 people visit the hospital each
# hour. Then we can represent the hourly number of hospital visitation as X ???
# Poisson(4) and simulate 12 samples from this distribution:
rpois(12, 4)

# Suppose that we want to know the probability that six people visit the hospital in
# an hour. Then we would use the probability mass function dpois():
dpois(6, 4)

