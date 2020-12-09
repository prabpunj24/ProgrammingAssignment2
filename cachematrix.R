## Week 3 peer graded assignment
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv=NULL
  set=function(y){
    x=y
    inv=NULL
  }
  get=fnction() {x}
  setInverse=function(inverse) {inv = inverse}
  getInverse = function() {inv}
  list(set =set, get = get, setInverse = setInverse,getInverse=getInverse)
}



##  This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  inv=x$getInverse()
  if(!is.null(inv)){
    message("hetting data")
    return(inv)
  }
  ## Computing the inverse of a square matrix can be done with the solve function in R
  mat=x$get()
  inv=solve(mat,...)
  x$setInverse(inv)
  inv
}
