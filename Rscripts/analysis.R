## Analysis! my favourite
## Andrew MacDonald
## 30-Jan-2016

## loading the functions and the data
source("Rscripts/functions.R")
library(gapminder)

## doing work:

doubleme(7)
fahr_to_kelvin(212)
kelvinToCelsius(400)

## F to C
fahr_to_celsius()

K <- 273.15
  
kelvinToCelsius(700)

## let's scale a simple vector
scale_it(1:10)

## working on gapminder ###

head(gapminder)
## scale a column in gapminder
scale_lifeExp <- scale_it(gapminder$lifeExp)

new_gap <- cbind(gapminder, scale_lifeExp)

new_gap2 <- gapminder

new_gap2$scaled_lifeExp <- scale_it(gapminder$lifeExp)

## wrapping text-- a challenge

fence(c("foo", "bar"), wrapper = "!!!")
paste(c("here", "i", "am"), 1)

paste(c(1,4,7), c("foo", "bar"))

(1:10)^2


# control flow ----------------------------------------

set.seed(42)
rpois(n = 2, lambda = 8)
rpois(lambda = 40, n = 10)
rpois(10, 40)

x <- rpois(1, lambda = 8)

if (x >= 10){
  print("x is greater than or equal to 10")
}
x

x <- 10
if (x > 10) {
  print("greater than")
} else if (x == 10) {
  print("x is 10")
} else {
  print("x is less than 10")
}

## Use an if statement to print a message if there are any records from 2002 in gapminder

## let's try this:
if (gapminder$year == 2002) {
  print("gapminder has data from 2002")
}

## doesn't work because gapminder$year == 2002 is 1704 long
sum(gapminder$year == 2002)

any(gapminder$year == 2002)
4 != 3
is_2002 <- gapminder$year != 2002
!is_2002



# let's learn some for loops --------------------------

for (i in 1:10) {
  print(i)
}

for (i in 1:5) {
  for (j in c("a", "b", "c", "d", "e")) {
    print(paste(i, j))
  }
}

## WRITE a function to combine ANY two vectors

paste.function <- function(x,y) {
  #len_out <- length(x) * length(y)
  output <- matrix(nrow = length(x),ncol = length(y))
  for (i in 1:length(x)) {
    for (j in 1:length(y)) {
      output[i,j] <- paste(x[i],y[j], sep = ",")
    }
  }
  return(output)
}

x <- 1:10
y <- c("foo", "baz")

paste.function(x,y)

## caution regarding vectors that look like subscripts. 