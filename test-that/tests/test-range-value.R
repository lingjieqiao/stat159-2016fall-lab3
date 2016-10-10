source("../functions/range-value.R")


# context with one test that groups expectations
context("Test for range value") 


test_that("range value for numeric vectors", {
  x <- c(1, 2, 3, 4, 5)
  
  expect_equal(range_value(x), 4)
  expect_length(range_value(x), 1)
  expect_type(range_value(x), 'double')
})


test_that("range value for numeric vectors with NAs", {
  y <- c(1, 2, 3, 4, NA)
  
  expect_equal(range_value(y, FALSE), NA_real_)
  expect_equal(range_value(y, TRUE), 3)
  expect_length(range_value(y, FALSE), 1)
  expect_length(range_value(y, TRUE), 1)
  expect_type(range_value(y), 'double')
})


test_that("range value for logical vectors", {
  z <- c(TRUE, FALSE, TRUE)
  
  expect_equal(range_value(z), 1L)
  expect_length(range_value(z), 1)
  expect_type(range_value(z), 'integer')
})


test_that("range value stops for character vectors", {
  w <- letters[1:5]
  
  expect_error(range_value(w))
})
