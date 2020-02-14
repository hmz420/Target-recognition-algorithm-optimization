# Target recognition algorithm optimization
## Introduction
### The project is to design and optimize target recognition algorithms base on Bayesian theory. Three kinds of algorithms are implemented:
#### Maximum-likelihood Estimation (ML)
#### Bayesian Parameter Estimation (BPE) & MAP 
#### Expectation Maximization (EM)
## Content
### ML Algorithm: a_main_ML.m
#### The lowest Probability of Error (PoE) is 8.78% using all of 64 features, while PoE is 4.17% using best 8 features
##### _Result of all features / PoE: 8.78%_
#### ![Result of all features](https://github.com/ZHM420/Target-recognition-algorithm-optimization/blob/master/ML_64.png)
##### _Result of best 8 features / PoE: 4.17%_
#### ![Result of best 8 features](https://github.com/ZHM420/Target-recognition-algorithm-optimization/blob/master/ML_best.png)
### Comparison of BPE, MAP and ML / a_main_BPE_MAP.m
#### MAP is the best especially in the condition of lack of data, while ML is the worst. MAP converges to BPE as amount of data increasing if data has Gaussian distribution
##### _Comparison of three method_

### EM Algorithm: a_main_EM.m
#### When we choose 8-dimension, the best PoE appears as 3.62%
##### _Result of 8-dimension EM
#### ![figure](https://github.com/ZHM420/Target-recognition-algorithm-optimization/blob/master/EM_8.PNG)
