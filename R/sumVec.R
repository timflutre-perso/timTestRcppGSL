##' Sum a vector
##'
##' Returns the sum of all the elements in a vector.
##' @param x numeric vector
##' @return numeric(1)
##' @author Timothee Flutre
##' @export
sumVec <- function(x){
  stopifnot(is.vector(x),
            is.numeric(x))
  out <- sum(x)
  return(out)
}
