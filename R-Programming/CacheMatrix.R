# Title     : Cache Matrix
# Objective : Write function to cache matrix inverse.
# Created by: Steven
# Created on: 5/30/2020

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() {
        x
    }
    setInverse <- function(inverse) {
        inv <<- inverse
    }
    getInverse <- function() {
        inv
    }
    list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}

cacheSolve <- function(x, ...) {
    inverse <- x$getInverse()
    if (!is.null(inverse)) {
        message('getting cached inverse Matrix')
        return(inverse)
    }
    data <- x$get()
    inverse <- solve(x, ...)
    x$setInverse(inverse)
    inverse
}

