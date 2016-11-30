library(timTestRcppGSL)
context("sumVec")

test_that("sumVec", {
  x <- c(5, 3, 7, 2)
  observed <- 5 + 3 + 7 + 2
  expected <- sumVec(x)
  expect_equal(observed, expected)
})
