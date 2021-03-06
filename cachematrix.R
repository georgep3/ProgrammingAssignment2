## Below is a pair of functions that cache the
## inverse of a matrix

## 1.makeCacheMatrix: This function creates a special "matrix" object
## that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix <- NULL
            set <- function(y) {
                   x <<- y
       inverseMatrix <<- NULL
  }
  get <- function() x
  setinverseMat <- function(solve) inverseMatrix <<- solve
  getinverseMat <- function() inverseMatrix
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
  

}


## 2.  cacheSolve: This function computes the inverse of the special "matrix"
## returned by makeCacheMatrix above. If the inverse has already been calculated
## (and the matrix has not changed), then the cachesolve should retrieve
## the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      inverseMatrix <- x$getinverseMat()
      if(!is.null(inverseMatrix)) {
        message("getting cached data")
        return(inverseMatrix)
  }
        data <- x$get()
        inverseMatrix <- solve(data, ...)
        x$setinverseMat(inverseMatrix)
        inverseMatrix
  
  
  
}
