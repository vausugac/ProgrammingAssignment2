## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(t = matrix()) {
  i<- NULL
  set <- function( matrix ) {
    t <<- matrix
    i <<- NULL
}

  get <- function() {
    t
  }
  
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  getInverse <- function() {
   
    i
  }
  
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

cacheSolve <- function(x, ...) {
 t <- x$getInverse()
 if( !is.null(t) ) {
   message("getting cached data")
   return(t)
 }
 
 data <- x$get()
 
 
 t <- solve(data) %*% data
 
 ## Set the inverse to the object
 x$setInverse(t)
 
 t
}
 
}

