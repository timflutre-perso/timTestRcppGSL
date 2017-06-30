##' Sum a vector (R implementation)
##'
##' Return the sum of all the elements in a vector.
##' @param x a numeric vector
##' @return numeric(1)
##' @author Timothee Flutre
##' @export
sumVec_R <- function(x){
  stopifnot(is.vector(x),
            is.numeric(x))
  out <- sum(x)
  return(out)
}
