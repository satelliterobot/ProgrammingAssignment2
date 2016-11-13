## There are 2 functions in this file. One creates a special matrix object that
## can cache the result when the inverse is calculated. The other actually does
## the matrix inverse calculation.

## Create a special matrix object that can cache the result when the inverse is
## calculated.
makeCacheMatrix <- function(x = matrix()) {
    cachedInverse <- NULL
    set <- function(y) {
        x <<- y
        cachedInverse <<- NULL
    }
    get <- function() {
        x
    }
    setinverse <- function(newInverse) {
        cachedInverse <<- newInverse
    }
    getinverse <- function() {
        cachedInverse
    }
    # This is the return value when a cacheMatrix is made
    list(set=set, get=get,
         setinverse=setinverse,
         getinverse=getinverse)
}


## Calculate the inverse of a matrix. Uses a cached result if possible.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(inv)
    inv
}
