# Matthew Miesle
# CUNY SPS - IS 607
# Week 2 Assignment
# Due: 2014-09-09
#
## 1. Suppose that you have five customers – James, Mary, Steve, Alex, and Patricia – 
##    in line at a store. Use R operations to perform the following tasks in sequence.
##  a. Assign the five individuals to a vector called queue.
queue <- c("James", "Mary", "Steve", "Alex", "Patricia")
print(queue)

##  b. Update the queue for the arrival of a new patron named Harold.
queue <- c(queue, "Harold")
print(queue)

##  c. Update the queue to reflect the fact that James has finished checking out.
queue <- queue[2:6]
print(queue)

##  d. Update the queue to reflect the fact that Patricia has talked her way in front of
##     Steve with just one item.
queue <- c(queue[1], queue[4], queue[2:3], queue[5])
print(queue)

##  e. Update the queue to reflect the fact that Harold has grown impatient and left.
queue <- queue[1:4]
print(queue)

##  f. Update the queue to reflect the fact that Alex has grown impatient and left.
##     (Do this as if you do not know what slot Alex currently occupies by number.)
queue <- queue[queue!="Alex"]
print(queue)

##  g. Identify the position of Patricia in the queue.
queue=="Patricia"

##  h. Count the number of people in the queue.
length(queue)

## 2. Modify your answer to quiz exercise 21 so that when you implement the quadratic
## equation, meaningful output is given whether there are one, two, or no solutions.
## (Hint: Use the discriminant.)
a <- 1
b <- 4
c <- 4
discriminant <- b ^ 2 - 4 * a * c
if (discriminant == 0)
{
    print("There is one repeated root")
}else if (discriminant >0)
{
    print("There are 2 real roots")
}else
{
    print("There are 0 real roots")
}
r1 <- (-b + sqrt(as.complex(b ^ 2 - 4 * a * c))) / (2 * a)
r2 <- (-b - sqrt(as.complex(b ^ 2 - 4 * a * c))) / (2 * a)
r1
r2


## 3. Use R to determine how many numbers from 1 to 1000 are not divisible by any
## of 3,7, and 11.
nums <- c(1:1000)
specified.nums <- nums[(nums %% 3 != 0) & (nums %% 7 != 0) & (nums %% 11 != 0)]
length(specified.nums)

## 4. Write R code that takes three input constants f, g, and h and determines whether
## they form a Pythagorean Triple (such that the square of the largest input is equal
## to the sum of the squares of the other two constants).
f <- 3
g <- 4
h <- 5
fgh <- sort(c(f, g, h))
ifelse(fgh[3] == sqrt(fgh[1] ^ 2 + fgh[2] ^ 2), "This set is a Pythagorean Triple", "This set IS NOT a Pythagorian Triple")