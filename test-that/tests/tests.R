# load the source code of the functions to be tested
source("../functions/functions.R")

# context with one test that groups expectations
context("Test for range value and missing values") 

test_that("range works as expected", {
  x <- c(1, 2, 3, 4, 5)

  expect_equal(range_value(x), 4)
  expect_length(range_value(x), 1)
  expect_type(range_value(x), 'double')
  expect_equal(missing_values(x), 0)
  expect_length(missing_values(x), 1)
  expect_gte(missing_values(x), 0)
})
