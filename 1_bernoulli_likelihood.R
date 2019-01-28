# likelihood for bernoulli distribution
likelihood <- function(n,y,theta)
{
  return(theta^y * (1-theta)^(n-y))
}

# create a sequence of values from 0.01 to 0.99 for testing
theta = seq(from = 0.01, to = 0.99, by = 0.01)

# plot the likelihood for sequence of thetas under a constant number of trials and wins
plot(x = theta, y = likelihood(400,72,theta))
abline(v = 72/400)

# log likelihood for bernoulli distribution
loglike <- function(n,y,theta)
{
  return(y*log(theta) + (n-y)*log(1-theta))
}

# plot log likelihood for sequence of thestas under a constant number of trials and wins
plot(x = theta, y = loglike(400,72,theta))
abline(v = 72/400)

# line plot for log likelihood 
plot(x = theta, y = loglike(400,72,theta), type = "l")
abline(v = 72/400)