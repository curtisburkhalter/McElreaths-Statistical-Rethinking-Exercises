#load required packages
library(rethinking)
library(ggplot2)
library(here)


#grid approximation of posterior distribution; using 20 possible values of p, i.e. prob. of success
#which in this case is defined as "finding" water on globe

#define number of possible values of p
nvals = 20

#define grid of possible parameter values; in this instance the probability of 
#"finding" water on a globe tossed in the air
p_grid <- seq(from = 0, to = 1, length.out = nvals)

#define the prior value of each possible parameter value
prior <- rep(1,nvals)

#compute the likelihood given that you observe 6 observations of water in 9 tosses
likelihood <- dbinom(6, size = 9, prob=p_grid)

#compute posterior as the product of prior and likelihood
unstd.posterior <- likelihood * prior

#compute standardized posterior so that it sums to 1
posterior <- unstd.posterior/sum(unstd.posterior)

#create dataframe containing all the above quantities of the grid approximation
grid_data <- data.frame(p_grid,prior,likelihood,unstd.posterior,posterior)

#display the posterior distribution
ggplot(grid_data, aes(x = p_grid, y = posterior)) +
  geom_point(aes(color = "blue")) +
  geom_line(aes(color = "red")) +
  xlab("Probability of water") +
  ylab("Posterior probability") +
  labs(title = "Calculation of posterior probabilities using grid approximation", subtitle = "Use 20 possible values of p") +
  guides(color = "none")

###################################################################################################
###################################################################################################
#grid approximation of posterior distribution; using 50 possible values of p, i.e. prob. of success
#which in this case is defined as "finding" water on globe

#define number of possible values of p
nvals = 50

#define grid of possible parameter values; in this instance the probability of 
#"finding" water on a globe tossed in the air
p_grid <- seq(from = 0, to = 1, length.out = nvals)

#define the prior value of each possible parameter value
prior <- rep(1,nvals)

#compute the likelihood given that you observe 6 observations of water in 9 tosses
likelihood <- dbinom(6, size = 9, prob=p_grid)

#compute posterior as the product of prior and likelihood
unstd.posterior <- likelihood * prior

#compute standardized posterior so that it sums to 1
posterior <- unstd.posterior/sum(unstd.posterior)

#create dataframe containing all the above quantities of the grid approximation
grid_data <- data.frame(p_grid,prior,likelihood,unstd.posterior,posterior)

#display the posterior distribution
ggplot(grid_data, aes(x = p_grid, y = posterior)) +
  geom_point(aes(color = "blue")) +
  geom_line(aes(color = "red")) +
  xlab("Probability of water") +
  ylab("Posterior probability") +
  labs(title = "Calculation of posterior probabilities using grid approximation", subtitle = "Use 50 possible values of p") +
  guides(color = "none")

###################################################################################################
###################################################################################################
#grid approximation of posterior distribution; using 10 possible values of p, i.e. prob. of success
#which in this case is defined as "finding" water on globe

#define number of possible values of p
nvals = 10

#define grid of possible parameter values; in this instance the probability of 
#"finding" water on a globe tossed in the air
p_grid <- seq(from = 0, to = 1, length.out = nvals)

#define the prior value of each possible parameter value
prior <- rep(1,nvals)

#compute the likelihood given that you observe 6 observations of water in 9 tosses
likelihood <- dbinom(6, size = 9, prob=p_grid)

#compute posterior as the product of prior and likelihood
unstd.posterior <- likelihood * prior

#compute standardized posterior so that it sums to 1
posterior <- unstd.posterior/sum(unstd.posterior)

#create dataframe containing all the above quantities of the grid approximation
grid_data <- data.frame(p_grid,prior,likelihood,unstd.posterior,posterior)

#display the posterior distribution
ggplot(grid_data, aes(x = p_grid, y = posterior)) +
  geom_point(aes(color = "blue")) +
  geom_line(aes(color = "red")) +
  xlab("Probability of water") +
  ylab("Posterior probability") +
  labs(title = "Calculation of posterior probabilities using grid approximation", subtitle = "Use 10 possible values of p") +
  guides(color = "none")

###################################################################################################
###################################################################################################
#grid approximation of posterior distribution; using 100 possible values of p, i.e. prob. of success
#which in this case is defined as "finding" water on globe

#define number of possible values of p
nvals = 100

#define grid of possible parameter values; in this instance the probability of 
#"finding" water on a globe tossed in the air
p_grid <- seq(from = 0, to = 1, length.out = nvals)

#define the prior value of each possible parameter value
prior <- rep(1,nvals)

#compute the likelihood given that you observe 6 observations of water in 9 tosses
likelihood <- dbinom(6, size = 9, prob=p_grid)

#compute posterior as the product of prior and likelihood
unstd.posterior <- likelihood * prior

#compute standardized posterior so that it sums to 1
posterior <- unstd.posterior/sum(unstd.posterior)

#create dataframe containing all the above quantities of the grid approximation
grid_data <- data.frame(p_grid,prior,likelihood,unstd.posterior,posterior)

#display the posterior distribution
ggplot(grid_data, aes(x = p_grid, y = posterior)) +
  geom_point(aes(color = "blue")) +
  geom_line(aes(color = "red")) +
  xlab("Probability of water") +
  ylab("Posterior probability") +
  labs(title = "Calculation of posterior probabilities using grid approximation", subtitle = "Use 100 possible values of p") +
  guides(color = "none")

###################################################################################################
###################################################################################################
#grid approximation of posterior distribution; using 10000 possible values of p, i.e. prob. of success
#which in this case is defined as "finding" water on globe

#define number of possible values of p
nvals = 10000

#define grid of possible parameter values; in this instance the probability of 
#"finding" water on a globe tossed in the air
p_grid <- seq(from = 0, to = 1, length.out = nvals)

#define the prior value of each possible parameter value
prior <- rep(1,nvals)

#compute the likelihood given that you observe 6 observations of water in 9 tosses
likelihood <- dbinom(6, size = 9, prob=p_grid)

#compute posterior as the product of prior and likelihood
unstd.posterior <- likelihood * prior

#compute standardized posterior so that it sums to 1
posterior <- unstd.posterior/sum(unstd.posterior)

#create dataframe containing all the above quantities of the grid approximation
grid_data <- data.frame(p_grid,prior,likelihood,unstd.posterior,posterior)

#display the posterior distribution
ggplot(grid_data, aes(x = p_grid, y = posterior)) +
  geom_point(aes(color = "blue")) +
  geom_line(aes(color = "red")) +
  xlab("Probability of water") +
  ylab("Posterior probability") +
  labs(title = "Calculation of posterior probabilities using grid approximation", subtitle = "Use 10000 possible values of p") +
  guides(color = "none")

###################################################################################################
###################################################################################################
#grid approximation of posterior distribution; using 100 possible values of p, i.e. prob. of success
#which in this case is defined as "finding" water on globe; use different priors now;
#first example is change the priors such that values of p less 0.5 have a prior value of 0 and those above have
#a prior value of 1

#define number of possible values of p
nvals = 100

#define grid of possible parameter values; in this instance the probability of 
#"finding" water on a globe tossed in the air
p_grid <- seq(from = 0, to = 1, length.out = nvals)

#define the prior value of each possible parameter value
prior <- ifelse(p_grid < 0.5, 0, 1)

#compute the likelihood given that you observe 6 observations of water in 9 tosses
likelihood <- dbinom(6, size = 9, prob=p_grid)

#compute posterior as the product of prior and likelihood
unstd.posterior <- likelihood * prior

#compute standardized posterior so that it sums to 1
posterior <- unstd.posterior/sum(unstd.posterior)

#create dataframe containing all the above quantities of the grid approximation
grid_data <- data.frame(p_grid,prior,likelihood,unstd.posterior,posterior)

#display the posterior distribution
ggplot(grid_data, aes(x = p_grid, y = posterior)) +
  geom_point(aes(color = "blue")) +
  geom_line(aes(color = "red")) +
  xlab("Probability of water") +
  ylab("Posterior probability") +
  labs(title = "Calculation of posterior probabilities using grid approximation", subtitle = "Prior values equal zero for value of p < 0.5") +
  guides(color = "none")

###################################################################################################
###################################################################################################
#grid approximation of posterior distribution; using 100 possible values of p, i.e. prob. of success
#which in this case is defined as "finding" water on globe; use different priors now;
#this example is to change the priors such that values increase exponentially up toward 1 and then decline
#exponentially away from 1

#define number of possible values of p
nvals = 100

#define grid of possible parameter values; in this instance the probability of 
#"finding" water on a globe tossed in the air
p_grid <- seq(from = 0, to = 1, length.out = nvals)

#define the prior value of each possible parameter value
prior <- exp(-5*abs(p_grid-0.5))

#compute the likelihood given that you observe 6 observations of water in 9 tosses
likelihood <- dbinom(6, size = 9, prob=p_grid)

#compute posterior as the product of prior and likelihood
unstd.posterior <- likelihood * prior

#compute standardized posterior so that it sums to 1
posterior <- unstd.posterior/sum(unstd.posterior)

#create dataframe containing all the above quantities of the grid approximation
grid_data <- data.frame(p_grid,prior,likelihood,unstd.posterior,posterior)

#display the posterior distribution
ggplot(grid_data, aes(x = p_grid, y = posterior)) +
  geom_point(aes(color = "blue")) +
  geom_line(aes(color = "red")) +
  xlab("Probability of water") +
  ylab("Posterior probability") +
  labs(title = "Calculation of posterior probabilities using grid approximation", subtitle = "Prior values peak at 1 and symmetrically decline") +
  guides(color = "none")






