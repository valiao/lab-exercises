## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

 
# Describe why this doesn't work: 
# vector sum only takes in two numbers, and we've given it a string and a number 

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# It's installed, but you never said you wanted to use the package. 
# So, it can't find the str_length function. 

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# initial is not found because it's mispelled  


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
typeof(c(1,2)) 


# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vect1, vect2) { 
  dif <- abs(length(vect1) - length(vect2)) 
  diff.string <- paste0("The difference in lengths i ", dif)
  return (diff.string) 
  # also could just do return paste0("The...)
}


# Pass two vectors of different length to your `CompareLength` function
CompareLength(c("a", "b"), 1:20) 


# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a, b) { 
  diff <- length(a) - length(b)
  if (diff > 0) { 
    text <- paste0("Your first vector is longer by ," diff, " elements.")
  } else { 
    text <- paste0("Your second vector is longer by ," diff, " elements.")
  }
  return (text)
}


# Pass two vectors to your `DescribeDifference` function
DescribeDifference(1:15, c(1, 2, 4)) 


# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVector <- function(v1, v2, v3) { 
  return (c(v1, v2,v3))  
}



# Send 3 vectors to your function to test it.
CombineVector(1:15, c(1, 2, 4), c("a", "b"))

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(courses) { 
  
  gsub("(A-Z)","",courses)
    
  
}



