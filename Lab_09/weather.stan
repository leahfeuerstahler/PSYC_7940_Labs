data{
  vector[107] Avg_High_Temp;
  vector[107] YEAR;
}
parameters{
    real a;
    real b;
    real sigma;
}
model{
  a ~ normal(45, 5);
  b ~ normal(0, 5);
  sigma ~ lognormal(0, 5);
  Avg_High_Temp ~ normal(a + b*YEAR, sigma);
}
