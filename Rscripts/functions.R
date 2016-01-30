# Andrew MacDonald
# practicing functions
# 30-Jan-2016

doubleme <- function(n){
  answer <- n + n
  return(answer)
}

## this function coverts F to Kelvin
fahr_to_kelvin <- function(temp){
  # apply equation to convert F to kelvin
  kelvin <- ((temp - 32) * 5/9) + 273.15
  return(kelvin)
}

## function to convert Kelvin to Celsius
## 0C is 273.15 K
#converting Kelvin to Celsius
kelvinToCelsius <- function(temp) {  
  celsius <- (temp - K)  
  return(celsius)
}

fahr_to_celsius <- function(temp){
  kelv <- fahr_to_kelvin(temp)
  cels <- kelvinToCelsius(kelv)
  return(cels)
}

scale_it <- function(x){
  mean_x <- mean(x)
  sd_x <- sd(x)
  scaled_x <- (x - mean_x) / sd_x
  return(scaled_x)
}


## wrap some text in a wrapper
fence <- function(text, wrapper){
  sentence <- paste(wrapper, text, wrapper, collapse = " ")
  return(sentence)
}

fence <- function(text, wrapper){
  read_this <- paste(text, collapse = ' ')
  return(paste(wrapper, read_this, wrapper, collapse = ' '))
}