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

unlist_1 <- function(x) {
    len_x  <- length(x)
    lens_x <- rep(1L, len_x)

    for (i in seq_len(len_x)) {
      if (rlang::is_list(x[[i]])) {
        lens_x[[i]] <- length(x[[i]])
      }
    }

    res <- vector('list', sum(lens_x))

    for (i in seq_along(lens_x)) {
      ends  <- cumsum(lens_x)
      start <- ends - lens_x + 1L

      if (lens_x[[i]] == 1L) {
        res[start[[i]]:ends[[i]]] <- x[i]
      } else {
        res[start[[i]]:ends[[i]]] <- x[[i]]
      }
    }
    res
}
