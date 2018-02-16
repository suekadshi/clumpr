#' Get the region details
#'
#' This is a generic function aimed to access to the region details of an
#' object
#'
#' @param x an object used to select a method.
#' @param ... further arguments passed to or from other methods.
#'
#' @return The region details for the object \code{x}.
#'
#' @export
get_region <- function(x, ...) {
  UseMethod("get_region")
}

#' Get the probability of acceptance
#'
#' This is a generic function aimed to access (or compute) to the
#' probability of acceptance (for an offered organ) details of an object
#'
#' @param x an object used to select a method.
#' @param ... further arguments passed to or from other methods.
#'
#' @return The probability of acceptance for the object \code{x}.
#' @export
get_p_accept <- function(x, ...) {
  UseMethod("get_p_accept")
}

#' Get number of offered organs
#'
#' This is a generic function aimed to access (or compute) to the
#' number of offered organs of a center, region, ...
#'
#' @param x an object used to select a method.
#' @param ... further arguments passed to or from other methods.
#'
#' @return The number of offered organs for the object \code{x}.
#' @export
get_offered <- function(x, ...) {
  UseMethod("get_offered")
}

#' Get the default probability of acceptance for a region
#'
#' This is a generic function aimed to access to the default probability
#' attributes of acceptance (for an offered organ) of an object
#'
#' @param x an object used to select a method.
#' @param ... further arguments passed to or from other methods.
#'
#' @return The probability of acceptance for the object \code{x}.
#' @export
get_p_default <- function(x, ...) {
  UseMethod("get_p_default")
}

#' Get the state details
#'
#' This is a generic function aimed to access to the state details of an
#' object
#'
#' @param x an object used to select a method.
#' @param ... further arguments passed to or from other methods.
#'
#' @return The state details for the object \code{x}.
#' @export
get_state <- function(x, ...) {
  UseMethod("get_state")
}

#' Get the centers details
#'
#' This is a generic function aimed to access to the centers details of an
#' object
#'
#' @param x an object used to select a method.
#' @param ... further arguments passed to or from other methods.
#'
#' @return The state details for the object \code{x}.
#' @export
get_centers <- function(x, ...) {
  UseMethod("get_centers")
}
