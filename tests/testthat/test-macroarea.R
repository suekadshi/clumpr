context("test-macroarea.R")

pavia     <- center('Pavia',   'Lombardia', offered = 5, p_accept = 0.6)
bergamo   <- center('Bergamo', 'Lombardia', offered = 8)
milano    <- center('Milano',  'Lombardia', p_accept = 0.8)
lombardia <- region(set_centers(pavia, bergamo, milano), default_p = 0.7)

padova <- center('Padova', 'Veneto', 8, 0.7)
veneto <- region(set_centers(padova))

nitp <- macroregion('NITp', set_regions(lombardia, veneto))

torino   <- center('Torino', 'Piemonte', 7, 0.6)
piemonte <- region(set_centers(torino))

test_that("set_macroregions input", {
  expect_error(set_macroregions(lombardia, 1), 'must be of class')
  expect_error(set_macroregions(lombardia, lombardia), 'must be different')
  expect_error(set_macroregions(lombardia, nitp), 'must be different')
  expect_is(set_macroregions(lombardia, veneto), 'set_macroregions')
  expect_is(set_macroregions(piemonte, nitp), 'set_macroregions')
})

test_that("gets expected class", {
  expect_is(macroarea('test-2', set_macroregions(lombardia, veneto)),
    'macroarea'
  )
  expect_is(macroarea('test-1', set_macroregions(lombardia)), 'macroarea')
  expect_is(macroarea('test-2', set_macroregions(piemonte, nitp)),
    'macroarea'
  )
  expect_is(macroarea('test-1', set_macroregions(nitp)), 'macroarea')
})


test_that("throws error on wrong input", {
  expect_error(macroregion(set_macroregions(veneto)),
    "not inherit from the class character"
  )
  expect_error(macroregion(1, set_regions(veneto)),
    "not inherit from the class character"
  )
  expect_error(macroregion(veneto, set_regions(veneto)),
    "not inherit from the class character"
  )
})



test_that("correct known output", {
  nord <- macroarea('Macroarea Nord', set_macroregions(piemonte, nitp))

  expect_is(get_regions(nord), 'set_regions')
  expect_equal(get_regions(nord), set_regions(piemonte, lombardia, veneto))
  expect_equivalent(get_initial_strip(nord), c('piemonte', 'lombardia', 'veneto'))
  expect_equivalent(get_current_strip(nord), c('piemonte', 'lombardia', 'veneto'))
  expect_equal(get_initial_time(nord), 0L)
  expect_equal(get_initial_time(nord), 0L)
  expect_equal(get_time(nord), 0L)
  expect_equal(get_final_time(nord), Inf)
})



# test_that('print works for set_center', {
#   nitp <- macroregion('NITp', set_regions(lombardia, veneto))
#   expect_output(print(get_centers(nitp)), 'Center')
#   expect_output(print(get_centers(nitp)), 'lombardia')
#   expect_is(print(get_centers(nitp)), 'list')
#   expect_is(print(get_centers(nitp))[[1]], 'set_centers')
# })
#
# test_that('print works for set_regions', {
#   expect_output(print(set_regions(lombardia, veneto)), 'Region')
#   expect_is(print(set_regions(lombardia, veneto)), 'set_regions')
# })
#
# test_that('print works properly', {
#   nitp <- macroregion('NITp', set_regions(lombardia, veneto))
#   expect_output(print(nitp), 'Macroregion')
#   expect_output(print(nitp), 'Time period')
#   expect_output(print(nitp), 'Lombardia')
#   expect_is(print(nitp), 'macroregion')
#
#   test_macro <- macroregion('test', set_regions(lombardia))
#   expect_output(print(test_macro), '(at least one)')
# })
#
#
# test_that('pass correct default', {
#   nitp <- macroregion('NITp', set_regions(lombardia, veneto))
#   expect_equivalent(get_initial_strip(nitp), c('lombardia', 'veneto'))
#   expect_equal(
#     get_p_accept(nitp),
#     at_least_one(get_p_accept(lombardia), get_p_accept(veneto))
#   )
# })
#
# test_that('zero p_accept print propery', {
#   center_1 <- center('test_c_1', 'friuli-venezia giulia', 10)
#   center_2 <- center('test_c_2', 'friuli-venezia giulia', 5)
#   region_1 <- region(set_centers(center_1, center_2), default_p = 0)
#   macro_1  <- macroregion('test_m_1', set_regions(region_1))
#   expect_output(print(macro_1), 'rate : 0')
# })
