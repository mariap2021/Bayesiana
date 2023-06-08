data{
  int<lower=1> N; // Number of observations 
  int<lower=1> p; // Number of parameters
  int<lower=0,upper=1> y[N];
  matrix[N, p] X;
}

parameters{
  vector[p] beta;
}


model{
  beta ~ normal(0, 100);
 
  y ~ bernoulli_logit(X * beta);
}
