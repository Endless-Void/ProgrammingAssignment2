## Put comments here that give an overall description of what your
## functions do:

##These function can input a matrix (set by the user) and calculate his inverse 
##matrix using the loaded matrix in the cache memory



## Write a short comment describing this function:
##This function makes a list that contain: the input matrix and his inverse 
##matrix, this last one it's calculated in the next function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(solve) m <<- solve
        getinv <- function() m
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)

}

## Write a short comment describing this function
##This function solve the inverse matrix of a loaded object, and save his 
##result in this last one.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinv(m)
        m
}
