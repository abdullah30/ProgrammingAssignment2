## Put comments here that give an overall description of what your
#I want to write two functions
#makeCachematrix
#cachesolve


## Write a short comment describing this function
#The purspose is to cache the inverse of a matrix
makeCacheMatrix <- function(x = matrix()) {
  invers <- NULL
  set <- function(z) {
    x <<- z
    invers <<- NULL
  }
  get <- function() x
  setinvers <- function(inverse) invers <<- inverse
  getinvers <- function() invers
  list(set = set, get = get, setinvers = setinvers, getinvers = getinvers)
}


## Write a short comment describing this function
#this function will determine and compute the inverse of a matrix. 
cacheSolve <- function(x, ...) {
  invers <- x$getinvers()
  if(!is.null(invers)) {
    message("computing inverse")
    return(invers)
  }
  data <- x$get()
  invers <- solve(data, ...)
  x$setinvers(invers)
  invers
}
        ## Return a matrix that is the inverse of 'x'
}