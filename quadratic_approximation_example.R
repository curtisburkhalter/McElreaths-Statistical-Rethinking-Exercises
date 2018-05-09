#load required packages
library(rethinking)
library(ggplot2)
library(here)

#another technique for calculating the posterior distribution is the quadratic approximation

#the technique is called a quadratic approximation due to the following logic:
#1)The region surrounding the peak of the posterior distribution can be typically described with a 
#normal, or Gaussian, distribution.
#2)The logarithm of a Gaussian distribution forms a parabola and a parabola is a quadratic function
#3)So this approximation represents any log-posterior with a parabola

#a quadratic approximation works through two basic steps
#1)find the posterior mode using an optimization algorithm
#2)estimate curvature near posterior mode and quadratic approximation can estimate the rest of the curve

#the rethinking::map function performs the quadratic approximation for us
globe.qa <- map(
  alist(
    w ~ dbinom(9,p), #binomial likelihood
    p ~ dunif(0,1)   #uniform prior
  ),
  data=list(w = 6)
)

#display summary of quadratic approximation; uses rethinking::precis function
precis(globe.qa)

#the accuracy of the quadratic approximation often increases with more data, but this is not always the case
#the quadratic approximation with a uniform prior or with lots of data is typically equivalent to the maximum
#likelihood estimator, or MLE, and its standard error