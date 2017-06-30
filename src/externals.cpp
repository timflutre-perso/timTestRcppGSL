#include "externals.h"

double sum_vec(const gsl_vector * v)
{
  double out = 0;
  size_t i = 0;
  for(i=0; i < v->size; ++i)
    out += gsl_vector_get(v, i);
  return out;
}
