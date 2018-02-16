context("test-get_region.R")

test_that("methods return correct output", {
  center_test <- center('Padova', 'Veneto')
  expect_equal(get_region(center_test), 'veneto')
})

test_that("methods return correct output", {
  center_test <- center('Padova', 'Veneto')
  expect_equal(get_state(center_test), 'italy')
})
