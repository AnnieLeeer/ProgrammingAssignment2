## Put comments here that give an overall description of what your
## functions do

# Two functions are included in the code. function makeCacheMatrix creates
# a list of function vector to set initial input matrix and its inverse,get input matrix,
# set the inverse matrix, and get the inverse matrix; Function cacheSolve calculates the 
# inverse, sets the inverse to m and output it.

## Write a short comment describing this function
# A vector include four functions (set initial values, get input values, 
# set inverse values, and get inverse values) is created.

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  } 
  get <- function() x
  setinverse <- function(inverse) m <<- inverse ##assign mean value to m
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function
# the inverse is first acquire the inverse value if it's calculated.If not,  
# the inverse is calculated and retrived. 

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
