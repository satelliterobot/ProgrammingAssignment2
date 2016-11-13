## This example is from https://www.mathsisfun.com/algebra/matrix-inverse.html
## Inverse of
## |4 7|
## |2 6|
## is
## | 0.6 -0.7|
## |-0.2  0.4|

testMatrix1 <- makeCacheMatrix(matrix(c(4,2,7,6),nrow=2,ncol=2))
# Should not say getting cached data
cacheSolve(testMatrix1)
# Should say getting cached data
cacheSolve(testMatrix1)
