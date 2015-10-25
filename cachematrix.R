## The function tries to  make Matrix inversion operation efficient - It will Cache 
## the inverse of the Matrix rather than calculate it repeatedly

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) invert <<- inverse
  getinverse <- function() invert
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Function will return inverse of the matrix - if Matrix is there in Cache then
## returns the value directly by reading else will calculate.
## This function will run only on invertible Matrices.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invert <- x$getmean()
  if(!is.null(invert)) {
    message("getting cached data")
    return(invert)
  }
  data <- x$get()
  invert <- Solve(data)
  x$setinverse(invert)
  invert
  }
