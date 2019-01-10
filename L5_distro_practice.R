# X ~ Pois(3). Find P(X = 1).
" Probability for a discrete value (1) needs to be calculated, therefore the probability density function should be used. "
dpois(x = 1, lambda = 3)

# X ~ Pois(3). Find P(X <= 1).
" Probability for a continuous range (upto 1) needs to be calculated, therefore the cumulative probability 
  density function should be used. Range is -inf to 1. "
ppois(q = 1, lambda = 3)

# X ~ Pois(3). Find P(X > 1).
" Probability will be calculated for the continuous range from 1 to inf. "
1 - ppois(q = 1, lambda = 3)

# Y ~ Gamma(2, 1/3). Find P(0.5 < Y < 1.5).
" Probability will be the continuous range between (-inf,0.5) and (1.5,inf). "
pgamma(q = 1.5, shape = 2, rate = 1/3) - pgamma(q = 0.5, shape = 2, rate = 1/3)

# Z ~ N(0,1). Find z for P(Z < z) = 0.975.
" Calculate how many units to the right of mean we need to be in order to get 97.5 percentile. "
qnorm(p = 0.975, mean = 0, sd = 1)

# Z ~ N(0,1). Find P(-1.96 < Z < 1.96).
" Probability will be the continuous range between (-inf,-1.96) and (1.96,inf)."
pnorm(q = 1.96, mean = 0, sd = 1) - pnorm(q = -1.96, mean = 0, sd = 1) 

# Z ~ N(0,1). Find Z for P(-z < Z < z) = 0.90.
" Calculate how many units to the right/left of mean we need to have 90 percentile in the center.
  i.e how many units to left and right of mean for 5 and 95 percentile respectively. "
qnorm(p = 0.05, mean = 0, sd = 1)
qnorm(p = 0.95, mean = 0, sd = 1)
