#' Constructor for object of class \code{macroregion}
#'
#' The function \code{\link{macroregion}()} is the constructor function for
#' the homonymous class.
#'
#' @note exclude a \code{\link{region}} from the \code{base_strip} is the
#'       same as include a \code{\link{region}} with zero
#'       \code{get_p_accept} parameter. Anyway, in such a case, it is
#'       always preferred to set \code{get_p_accept} to zero for those
#'       \code{\link{region}} (i.e. for all their \code{\link{center}}s) and
#'       also exclude them from the strip.
#'
#'
#' @param name [chr] the name of the macroregion
#' @param regions [lst] a list of objects of class \code{\link{regions}},
#'        passed by \code{\link{set_regions}()}. Note: all the region in a
#'        macroregion must be of the same state.
#' @param base_strip [chr] e sequence of \code{\link{region}}s' names in the
#'        \code{\link{macroregion}} representing the order in which organs
#'        started to be distributed in the \code{\link{macroregion}} at the
#'        beginning of the period. All the listed \code{\link{region}}s have
#'        to be included also in the \code{region} field. Repetition are
#'        admitted as well as exculsions.
#'
#' @return An object of class \code{\link{macroregion}}.
#' @export
#'
#' @examples
#' pavia   <- center('Pavia',   'Lombardia', offered = 5, p_accept = 0.6)
#' bergamo <- center('Bergamo', 'Lombardia', 8)
#' milano  <- center('Milano',  'Lombardia', 10, 0.8)
#' lombardia <- region(set_centers(pavia, bergamo, milano), default_p = 0.7)
#'
#' padova <- center('Padova', 'Veneto', 0.8, 0.7)
#' veneto <- region(set_centers(padova))
#'
#' nitp <- macroregion('NITp',
#'   regions = set_regions(lombardia, veneto),
#'   base_strip = c('lombardia', 'lombardia', 'veneto')
#' )
macroregion <- function(name,
                        regions,
                        base_strip = purrr::map_chr(regions, 'region')
  ) {

  # input check ---------------------------------------------------------

  ## centers
  if (!inherits(regions, 'set_regions')) stop(
    paste0('Argument ', crayon::silver("regions"), ' must be provide using ',
        crayon::green('set_regions()'), ', and it isn\'t.\n\n',

      'Hint : To set `region_1` and `region_2` use ',
        crayon::silver("set_regions(region_1, region_2)"), '.\n',
      '       (Note: all the region must be of the same states.)'
    ),
    call. = FALSE
  )

  # constructor ----------------------------------------------------------

  p_accept_regions <- purrr::map_dbl(regions, get_p_accept)

  structure(.Data = c(macroregion = name),
    regions         = regions,
    acceptance_rate = at_least_one(p_accept_regions),
    base_strip      = base_strip,
    actual_strip    = base_strip,
    time_period     = 0L,
    class           = 'macroregion'
  )
}
