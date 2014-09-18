## Two functions are listed here, namely makeCacheMatrix, and cacheSolve. 
## Both are based on the cachemean and makeVector functions in the Assignment 2 instructions, 
## therefore they look extremely similar, 
## with a few modifications to return the requirements of the assignment
## Explanatory comments are included before each of the functions.

## As noted on the assignment page, 
## this function creates a special "matrix" object that can cache its inverse.
## To do so, we call the function makeCacheMatrix on an object, i.e. "m" (without
## quotation marks.  
## We then use call a matrix to "m", so "m" is now a matrix "object" that can 
## cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
          a <- NULL
        set <- function(y){
          x <<- y
          a <<- NULL
}
    get <- function() x 
    set_matrix <- function(solve) a <<- solve
    get_matrix <- function() a
    list(set=set,get=get, set_matrix=set_matrix, get_matrix=get_matrix)
}


## This function utilises the matrix above, and when called, returns the inverse
## of the matrix in the object above. If the inverse has already been computed, 
## then the function will return the cache computed. To utilise this function, 
## call cacheSolve on the object specified above. 

cacheSolve <- function(x=matrix(), ...) {
      a <- x$get_matrix()
      if(!is.null(a)){
        message("getting cached data")
        return(a)
  }
      matrix<-x$get()
      a <- solve(matrix,...)
      x$set_matrix(a)
      a
}  
  
