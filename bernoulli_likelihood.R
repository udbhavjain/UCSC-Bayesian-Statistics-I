likelihood <- function(n,y,theta)
{
  return(theta^y * (1-theta)^(n-y))
}

theta = seq(from = 0.01, to = 0.99, by = 0.01)

x11()
plot(x = theta, y = likelihood(400,72,theta))
abline(v = 72/400)

loglike <- function(n,y,theta)
{
  return(y*log(theta) + (n-y)*log(1-theta))
}

x11()
plot(x = theta, y = loglike(400,72,theta))
abline(v = 72/400)


x11()
plot(x = theta, y = loglike(400,72,theta), type = "l")
abline(v = 72/400)