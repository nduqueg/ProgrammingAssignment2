## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This function creates the special "matrix" that it actually is set from the chache if it already exist
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
# this function calculates the inverse of a matrix if it has not been calculate and if it was,
# it set its value to the return variable
cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
  
  
  ## Return a matrix that is the inverse of 'x'
}
