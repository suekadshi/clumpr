#' @describeIn center wrapper function to access to the detail "region".
#' @inheritParams get_region
#' @export
#' @examples
#' get_region(padova) # veneto
get_region.center <- function(x, ...) {
  attr(x, 'region')
}

#' @describeIn center wrapper function to access to the detail "p_accept".
#' @inheritParams get_p_accept
#' @export
#' @examples
#' get_p_accept(padova)
get_p_accept.center <- function(x, ...) {
  attr(x, 'p_accept')
}

#' @describeIn center wrapper function to access to the detail "offered".
#' @inheritParams get_offered
#' @export
#' @examples
#' get_offered(padova)
get_offered.center <- function(x, ...) {
  attr(x, 'offered')
}

#' @describeIn center wrapper function to access to the detail "state".
#' @inheritParams get_state
#' @export
#' @examples
#' get_state(padova) # italy
get_state.center <- function(x, ...) {
  attr(x, 'state')
}
