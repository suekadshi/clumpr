#' Get the region name
#'
#' This is a generic function aimed to access to the region name of an
#' object
#'
#' @param x an object used to select a method.
#' @param ... further arguments passed to or from other methods.
#'
#' @return The region name for the object \code{x}.
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
#' object.
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
#' This is a generic function aimed to access to the \code{centers} details
#' of an object.
#'
#' @param x an object used to select a method.
#' @param ... further arguments passed to or from other methods.
#'
#' @return The \code{centers} details for the object \code{x}.
#' @export
get_centers <- function(x, ...) {
  UseMethod("get_centers")
}

#' Get the regions details
#'
#' This is a generic function aimed to access to the \code{regions} details
#' of an object.
#'
#' @param x an object used to select a method.
#' @param ... further arguments passed to or from other methods.
#'
#' @return The \code{regions} details for the object \code{x}.
#' @export
get_regions <- function(x, ...) {
  UseMethod("get_regions")
}

#' Get the initial strip details
#'
#' This is a generic function aimed to access to the \code{initial_strip}
#' details of an object.
#'
#' @param x an object used to select a method.
#' @param ... further arguments passed to or from other methods.
#'
#' @return The \code{initial_strip} details for the object \code{x}.
#' @export
get_initial_strip <- function(x, ...) {
  UseMethod("get_initial_strip")
}


#' Get the current strip details
#'
#' This is a generic function aimed to access to the \code{current_strip}
#' details of an object.
#'
#' @param x an object used to select a method.
#' @param ... further arguments passed to or from other methods.
#'
#' @return The \code{current_strip} details for the object \code{x}.
#' @export
get_current_strip <- function(x, ...) {
  UseMethod("get_current_strip")
}

#' Get the current time details
#'
#' This is a generic function aimed to access to the \code{time_period}
#' details of an object.
#'
#' @param x an object used to select a method.
#' @param ... further arguments passed to or from other methods.
#'
#' @return The \code{time_period} details for the object \code{x}.
#' @export
get_time <- function(x, ...) {
  UseMethod("get_time")
}
