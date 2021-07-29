# Data Science: Probability

## Course Overview

### In this course, you will learn:

- Important concepts in probability theory including random variables and independence
- How to perform a Monte Carlo simulation
- The meaning of expected values and standard errors and how to compute them in R
- The importance of the Central Limit Theorem

### Course overview

#### Section 1: Discrete Probability

You will learn about basic principles of probability related to categorical data using card games as examples.

#### Section 2: Continuous Probability

You will learn about basic principles of probability related to numeric and continuous data.

#### Section 3: Random Variables, Sampling Models, and The Central Limit Theorem 

You will learn about random variables (numeric outcomes resulting from random processes), how to model data generation procedures as draws from an urn, and the Central Limit Theorem, which applies to large sample sizes.

#### Section 4: The Big Short 

You will learn how interest rates are determined and how some bad assumptions led to the financial crisis of 2007-2008.



## Section1

1. Introduction to Discrete Probability
2. Combinations and Permutations
3. Addition Rule and Monty Hall

After the Section, you will:

- apply basic probability theory to categorical data.
- perform a Monte Carlo simulation to approximate the results of repeating an experiment over and over, including simulating the outcomes in the Monty Hall problem.
- distinguish between: sampling with and without replacement, events that are and are not independent, and combinations and permutations.
- apply the multiplication and addition rules, as appropriate, to calculate the probably of multiple events occurring.
- use `sapply()` instead of a for loop to perform element-wise operations on a function.

- The *probability of an event* is the proportion of times the event occurs when we repeat the experiment independently under the same conditions.

*[Math Processing Error]Pr(A)=probability of event A*

- An *event* is defined as an outcome that can occur when when something happens by chance.
- We can determine probabilities related to discrete variables (picking a red bead, choosing 48 Democrats and 52 Republicans from 100 likely voters) and continuous variables (height over 6 feet).

#### Combinations and permutation

- paste() joins two strings and inserts a space in between.
- expand.grid() gives the combinations of 2 vectors or lists.
- permutations(n,r) from the gtools package lists the different ways that r items can be selected from a set of n options when order matters.
- combinations(n,r) from the gtools package lists the different ways that r items can be selected from a set of n options when order does not matter.

#### Carlo simulation	

- Monte Carlo simulations model the probability of different outcomes by repeating a random process a large enough number of times that the results are similar to what would be observed if the process were repeated forever.
- The `sample()` function draws random outcomes from a set of options.
- The `replicate()` function repeats lines of code a set number of times. It is used with `sample()` and similar functions to run Monte Carlo simulations.

#### Independency

- *Conditional probabilities* compute the probability that an event occurs given information about dependent events. For example, the probability of drawing a second king given that the first draw is a king is:

- If two events and are independent, .
- To determine the probability of multiple events occurring, we use the *multiplication rule*.



```R
simulated_games<-sample(c("win","lose"),4,replace=TRUE,prob=c(0.4,0.6))
B<-10000
celitic_win<-replicate(B,{
    simulated_games<-sample(c("win","lose"),4,replace=TRUE,prob=c(0.4,0.6))
    any(simulated_games=="win")
})
mean(celitic_win)

library(ggtools)

```



Adding the first file to git
