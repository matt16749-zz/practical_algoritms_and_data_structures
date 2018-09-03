# Techical Problem Solving and Analysis

## In this class I will learn algorithmic analysis with Big O notation.

### Pre-class

#### Read George Polya's [How to Solve It](https://math.berkeley.edu/~gmelvin/polya.pdf) chapter 1.
##### 4 Principles of problem solving:

1. Understand the problem
      * Do I understand all the words in the problem?
      * What am I being asked to find or show?
      * Can I restate the problem?
      * Will drawing a diagram help?
      * Is there enough info to solve problem?
2. Devise a plan
  * There are many ways to solve a problem. Strategies include:
    * Guess and check
    * Orderly list
    * Eliminate possibilities
    * Look for patterns
3. Carry out the plan
  * Need care and patience. Persist with the plan I have chosen. If the plan does not work then discard it and choose a different plan.
4. Look back
  * Much can be gained by looking back and taking time to reflect on what I've done, what worked, and what didn't.

#### Analysis Notes
##### The big picture

* What makes one computer program better than another?
  * There are many criteria, some of which may be in conflict.
* Typically we want our code to be *correct*.
* We also want our code to be *reusable*, *readable*, and *elegant*.
* But also we want our code to be *performant*. How __long__ our program will run and how much space (__time__ and __memory__)
* What is algorithmic analysis?
  * The way to compare the time and space efficiency of programs with respect to their inputs and nothing else.
* Problem:
  * Calculate the sum of the first n numbers. Method should take n parameter and return a sum of the numbers
  * [Solution](https://github.com/matt16749/practical_algoritms_and_data_structures/blob/master/1_technical_problem_solving_and_analysis/problems/1_sum_of_n.rb)

##### Big O notation

* An algorithm is basically a series of steps to a solution. Therefore, an algorithm's execution time is __The number of steps required to solve a problem__
* __Big O notation__ provides a useful approximation for the actual number of steps in a computation.
* Sometimes the performance of an algorithm depends on the problem’s exact data values rather than its size. For these kinds of algorithms, we need to characterize their performances as __worst case, best case, or average case__.

