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
#' get_region(padova) # veneto
get_region.center <- function(x, ...) {
  attr(x, 'region')
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

#' @describeIn center wrapper function to access to the detail "p_accept".
#' @inheritParams get_p_accept
#' @export
#' @examples
#' get_p_accept(padova)
get_p_accept.center <- function(x, ...) {
  attr(x, 'p_accept')
}

#' @describeIn region compute the probability that at least one center in
#'             in the region accept an offered organ.
#' @inheritParams get_p_accept
#' @export
#' @examples
#' pavia   <- center('Pavia',   'Lombardia', 10, 0.8)
#' bergamo <- center('Bergamo', 'Lombardia', 10, 0.5)
#' milano  <- center('Milano',  'Lombardia', 10)
#'
#' lombardia <- region(set_centers(pavia, bergamo, milano), default_p = 0.2)
#' get_p_accept(lombardia)
get_p_accept.region <- function(x, ...) {
  attr(x, 'acceptance_rate')
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

#' @describeIn center wrapper function to access to the detail "offered".
#' @inheritParams get_offered
#' @export
#' @examples
#' get_offered(padova)
get_offered.center <- function(x, ...) {
  attr(x, 'offered')
}

#' @describeIn region wrapper function to access to the detail "offered".
#' @inheritParams get_offered
#' @export
#' @examples
#' get_offered(lombardia)
get_offered.region <- function(x, ...) {
  attr(x, 'offered')
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

#' @describeIn region wrapper function to access to the detail "default_p".
#' @inheritParams get_p_default
#' @export
#' @examples
#' get_p_default(lombardia)
get_p_default.region <- function(x, ...) {
  attr(x, 'default_p')
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

#' @describeIn center wrapper function to access to the detail "state".
#' @inheritParams get_state
#' @export
#' @examples
#' get_state(padova) # italy
get_state.center <- function(x, ...) {
  attr(x, 'state')
}

#' @describeIn region wrapper function to access to the detail "state".
#' @inheritParams get_state
#' @export
#' @examples
#' get_state(lombardia) # italy
get_state.region <- function(x, ...) {
  get_centers(x)[[1]] %>%
    get_state()
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

#' @describeIn region wrapper function to access to the detail "centers".
#' @inheritParams get_centers
#' @export
#' @examples
#' get_centers(lombardia)
get_centers.region <- function(x, ...) {
  attr(x, 'centers')
}



