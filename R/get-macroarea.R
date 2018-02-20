#' @describeIn macroarea wrapper function to access to the 'macroregion'
#'             detail.
#' @inheritParams get_macroregions
#' @export
#' @examples
#' get_macroregions(nord)
get_macroregions.macroarea <- function(x, ...) {
  attr(x, 'macroregions')
}

#' @describeIn macroarea wrapper function to access to all the reagions in
#'             macroarea
#' @inheritParams get_regions
#' @export
#' @examples
#' get_regions(nord)
get_regions.macroarea <- function(x, ...) {
  get_macroregions(x) %>%
    purrr::map(get_regions) %>%
    unlist_1 %>%
    do.call(what = set_regions)
}

#' @describeIn macroarea wrapper function to access to the name of the
#'             state
#' @inheritParams get_state
#' @export
#' @examples
#' get_state(nord) # "italy"
get_state.macroarea <- function(x, ...) {
  attr(x, 'state')
}

#' @describeIn macroarea compute the probability that at least one center
#'             in any region of the macroarea accept an offered organ.
#' @inheritParams get_p_accept
#' @export
#' @examples
#' get_p_accept(nord)
get_p_accept.macroarea <- function(x, ...) {
  attr(x, 'acceptance_rate')
}

#' @describeIn macroarea wrapper function to access to the detail
#'             "offered".
#' @inheritParams get_offered
#' @export
#' @examples
#' get_offered(nord)
get_offered.macroarea <- function(x, ...) {
  attr(x, 'offered')
}

#' @describeIn macroarea wrapper function to access to the detail
#'             "initial_strip".
#' @inheritParams get_initial_strip
#' @export
#' @examples
#' get_initial_strip(nord)
get_initial_strip.macroarea <- function(x, ...) {
  attr(x, 'initial_strip')
}

#' @describeIn macroarea wrapper function to access to the detail
#'             "current_strip".
#' @inheritParams get_current_strip
#' @export
#' @examples
#' get_current_strip(nord)
get_current_strip.macroarea <- function(x, ...) {
  attr(x, 'current_strip')
}


#' @describeIn macroarea wrapper function to access to the detail
#'             "initial_time".
#' @inheritParams get_time
#' @export
#' @examples
#' get_initial_time(nord)
get_initial_time.macroarea <- function(x, ...) {
  attr(x, 'initial_time')
}

#' @describeIn macroarea wrapper function to access to the detail
#'             "current_time".
#' @inheritParams get_time
#' @export
#' @examples
#' get_time(nord)
get_time.macroarea <- function(x, ...) {
  attr(x, 'current_time')
}

#' @describeIn macroarea wrapper function to access to the detail
#'             "final_time".
#' @inheritParams get_time
#' @export
#' @examples
#' get_final_time(nord)
get_final_time.macroarea <- function(x, ...) {
  attr(x, 'final_time')
}
