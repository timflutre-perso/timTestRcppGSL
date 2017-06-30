#include <RcppGSL.h>

//' Sum a vector (C/C++ internal implementation)
//'
//' Return the sum of all the elements in a vector.
//' @param x a numeric vector
//' @return numeric(1)
//' @author Timothee Flutre
//' @export
// [[Rcpp::export]]
double sumVec_cpp_int(const RcppGSL::Vector & x) {
  double out = 0;
  size_t i = 0;
  for(i=0; i < x->size; ++i)
    // out += x[i];
    out += gsl_vector_get(x, i);
  return out;
}
