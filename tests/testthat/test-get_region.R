context("test-get_region.R")

test_that("methods return correct output", {
  center_test <- center('Padova', 'Veneto', 10, 0.8)
  expect_equal(get_region(center_test), 'Veneto')
})
