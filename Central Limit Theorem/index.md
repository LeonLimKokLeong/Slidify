---
title       : Central Limit Theorem
subtitle    : The effect of Sample Size on distribution
author      : Leon
job         : 
framework   : io2012        # {io2012, html5slides, dzslides, landslide, shower, slideous, showoff, revealjs, ...}
highlighter : highlight.js     # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
---
## Central Limit Theorem

In probability theory, the central limit theorem (CLT) states that, given certain conditions, the arithmetic mean of a sufficiently large number of iterates of independent random variables, each with a well-defined expected value and well-defined variance, will be approximately normally distributed, regardless of the underlying distribution. That is, suppose that a sample is obtained containing a large number of observations, each observation being randomly generated in a way that does not depend on the values of the other observations, and that the arithmetic average of the observed values is computed. If this procedure is performed many times, the central limit theorem says that the computed values of the average will be distributed according to the normal distribution (commonly known as a "bell curve").

1. The averages of samples have approximately normal distriution.
2. The bigger the sample size, the deviation and variance of averages becomes more normal and narrower.

###### Reference:
###### [http://en.wikipedia.org/wiki/Central_limit_theorem](http://en.wikipedia.org/wiki/Central_limit_theorem)
###### [http://www.youtube.com/watch?v=jvoxEYmQHNM](http://www.youtube.com/watch?v=jvoxEYmQHNM)

---
## Demostration with Shiny

This simple Shiny application demostrate the Central Limit Theorem allowing the users to interact and visualise the change in the in the normal curve while changing the sample size.

The Shiny app generates the random number of observations and sample per observations as requested and plots the histogram overlaid with a normal curve.

By changing the number of sample / observation, we will see the distribution of averages becomes more normal and narrower.

We could also see from the interaction with the Shiny app, the number of observations does not have much impact on the distribution of averages.

---
## R codes
The random dataset were generated with the R codes

```r
Observations = 3 # In Shiny app, this value is read in from UI
SampleSize = 5 # In Shiny app, this value is read in from UI
lambda = 0.2 # lambda is set to 0.2
set.seed(1) # so that this is reproducible
dataset = data.frame(matrix(rexp(Observations * SampleSize, lambda), Observations))
dataset$row_mean = rowMeans(dataset[,])
```

Each row represents an Observation and the last column is the mean of the Observation.

```r
head(dataset)
```

```
##          X1         X2       X3       X4        X5 row_mean
## 1 3.7759092  0.6989763 6.147810 0.735230  6.188018 3.509189
## 2 5.9082139  2.1803431 2.698414 6.953676 22.119671 7.972064
## 3 0.7285336 14.4748427 4.782837 3.810149  5.272716 5.813816
```

---
## Try it out

[Click here](http://leon.shinyapps.io/Project-ShinyApp/) to try out the CLT Shiny application.


Thank you.
