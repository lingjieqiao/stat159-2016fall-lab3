source("../functions/mean-measure.R")

context("Measure center value - mean")

test_that("mean as expected", {
  expect_equal(mean-measure(1, 1), 1)
  expect_length(mean-measure(1, 1), 1)
  expect_type(mean-measure(1, 1), 'integer')
  expect_equal(mean-measure(1, 2, 3, 4, 5), 3)
  expect_length(mean-measure(1, 2, 3, 4, 5), 1)
  expect_type(mean-measure(1, 2, 3, 4, 5), 'integer')
})
