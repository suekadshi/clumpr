#' Get the region details
#'
#' This is a generic function aimed to access to the region details of an
#' object
#'
#' @param x an object used to select a method.
#' @param ... further arguments passed to or from other methods.
#'
#' @return The region details for the object \code{x}.
#' @export
get_region <- function(x, ...) {
  UseMethod("get_region")
}

#' @describeIn center wrapper function to access to the detail "region".
#' @inheritParams get_region
#' @export
#' @examples
#' center_a <- center('Padova', 'Veneto', 10, 0.8)
#' get_region(center_a)
get_region.center <- function(x, ...) {
  attr(x, 'region')
}
