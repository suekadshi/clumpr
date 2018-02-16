cat_line <- function(...) cat(..., "\n", sep = "")

neg_p <- function(p) {
  assertive::assert_all_are_proportions(p)
  1 - p
}

at_least_one <- function(...) {
  .dots <- list(...)
  .dots %>%
    purrr::walk(~ assertive::assert_all_are_proportions(.x))

  .dots <- unlist(.dots)
  1 - prod(neg_p(.dots))
}
