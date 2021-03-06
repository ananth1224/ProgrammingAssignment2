## The two function written calculate the cache inverse of a matrix that is sent in

## This prepares a matrix for caching

makeCacheMatrix <- function(x = matrix()) {
	m<-NULL
	set<-function(y){
	x<<-y
	m<<-NULL
}
	get<-function() x
	setinverse<-function(inverse) m<<-inverse
	getinverse<-function() m
	list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
	

}


## This check whether the inverse was cached or not

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
        
}
