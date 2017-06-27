#' @useDynLib timTestRcppGSL
#' @importFrom Rcpp sourceCpp

.onUnload <- function (libpath) {
  library.dynam.unload("timTestRcppGSL", libpath)
}
