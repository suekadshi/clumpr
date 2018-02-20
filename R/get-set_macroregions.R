#' @describeIn set_macroregions wrapper function to access to the all the
#'             names of reagions appear in the `set_macroregion`,
#'             recursively.
#' @inheritParams get_all_region
#' @export
#' @examples
#' get_all_region(set_region(piemonte, nitp))
get_all_region.set_macroregions <- function(x, ...) {
  x %>%
    purrr::map(get_all_region) %>%
    unlist %>%
    unname
}
