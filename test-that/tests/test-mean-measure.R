source("../functions/mean-measure.R")

context("Measure center value - mean")

test_that("mean as expected", {
  x <- c(1, 1)
  y <- c(1, 2, 3, 4, 5)
  
  expect_equal(mean_measure(x), 1)
  expect_length(mean_measure(x), 1)
  expect_type(mean_measure(x), 'double')
  expect_equal(mean_measure(y), 3)
  expect_length(mean_measure(y), 1)
  expect_type(mean_measure(y), 'double')
})
