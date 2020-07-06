## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL # create i as empty object
    set <- function(y) { # intitialize storage of x and i
        x <<- y
        i <<- NULL
    }
    get <- function() x # put x in "get"
    setinverse <- function(inverse) i <<- inverse # define storage for i
    getinverse <- function() i
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    i <- x$getinverse()
    #see wether inverse has been calculated or not
    if(!is.null(i)){
        message("getting cache data")
        return(i)
    }
    data <- x$get()
    i <- solve(data) # inverse matrix
    x$setinverse(i) # store inverse in cache
    i
}
