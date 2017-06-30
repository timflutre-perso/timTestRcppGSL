library(timTestRcppGSL)
context("sumVec")

test_that("sumVec", {
  x <- c(5, 3, 7, 2)

  observed <- sum(x)

  expected <- sumVec_R(x)
  expect_equal(observed, expected)

  expected <- sumVec_cpp_int(x)
  expect_equal(observed, expected)

  expected <- sumVec_cpp_ext(x)
  expect_equal(observed, expected)
})
