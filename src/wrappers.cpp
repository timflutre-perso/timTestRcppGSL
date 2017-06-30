#include <Rcpp.h>
#include <RcppGSL.h>

#include "externals.h"

//' Sum a vector (C/C++ external implementation)
//'
//' Return the sum of all the elements in a vector.
//' @param x a numeric vector
//' @return numeric(1)
//' @author Timothee Flutre
//' @export
// [[Rcpp::export]]
RcppExport SEXP sumVec_cpp_ext(SEXP x)
{
// step 1: convert input to C/C++ types
  RcppGSL::vector<double> x_ = x;

// step 2: call the underlying C/C++ function
  double out = sum_vec(x_);

// step 3: return the result as a SEXP
  return Rcpp::wrap(out);
}
