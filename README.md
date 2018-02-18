clumpr
================

<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Travis Build
Status](https://travis-ci.com/UBESP-DCTV/clumpr.svg?token=wGyFLep97LHjNKfPGjkg&branch=structures)](https://travis-ci.org/UBESP-DCTV/clumpr)
[![Codecov
Status](https://codecov.io/gh/UBESP-DCTV/clumpr/branch/structures/graph/badge.svg?token=IY02gbLUth)](https://codecov.io/gh/UBESP-DCTV/clumpr)
[![CRAN Status
Badge](https://www.r-pkg.org/badges/version/clumpr.svg)](http://cran.R-project.org/)

**C**urrent transp**L**ant s**U**rplus **M**anagement **P**rotocol in
**R**

Last update: 2018-02-18

## Description

The `clumpr` package aims is to provide a toolbox of function for model,
validate and visualize dynamics assessed by the “Protocollo Nazionale
per la Gestione delle Eccedenze di Tutti i Programmi di Trapianto” in
Italy.

The first implementation is focused on the lung-transplant centers
management.

## Example

This is a basic example which shows you how it works:

``` r
library(clumpr)

# setup centers and regions
pavia   <- center('Pavia',   'Lombardia', offered = 11, p_accept = 0.8)
bergamo <- center('Bergamo', 'Lombardia', offered =  7, p_accept = 0.5)
milano  <- center('Milano',  'Lombardia', offered =  3)

lombardia <- region(set_centers(pavia, bergamo, milano), default_p = 0.2)

# show data
lombardia
#>     Region  : Lombardia (Italy)
#>     Centers : Pavia, Bergamo, Milano (#3)
#>     Acceptance rate : 0.92 (at least one center)
#>     Offered organs  : 21 (from all the centers)
get_centers(lombardia)
#>     Center           : Pavia (Lombardia --- Italy)
#>     Acceptance rate  : 0.8
#>     Offered organs   : 11
#> 
#>     Center           : Bergamo (Lombardia --- Italy)
#>     Acceptance rate  : 0.5
#>     Offered organs   : 7
#> 
#>     Center           : Milano (Lombardia --- Italy)
#>     Acceptance rate  : <inherit from the region rate>
#>     Offered organs   : 3

# setup macroregions
padova <- center('Padova', 'Veneto', 10, 0.9)
veneto <- region(set_centers(padova))

nitp <- macroregion('NITp', set_regions(lombardia, veneto),
  initial_strip = c('lombardia',  'lombardia', 'veneto'))

# show data
nitp
#>     Macroregion : Nitp (Italy)
#>     Regions     : Lombardia; Veneto (#2)
#>     Centers     : Pavia, Bergamo, Milano; Padova (#4)
#>     Acceptance rate : 0.992 (at least one center in some region)
#>     Offered organs  : 31 (from every the centers of every region)
#>     Initail strip   : Lombardia --> Lombardia --> Veneto
#>     Current strip   : Lombardia --> Lombardia --> Veneto
#>     Time period     : 0
get_regions(nitp)
#>     Region  : Lombardia (Italy)
#>     Centers : Pavia, Bergamo, Milano (#3)
#>     Acceptance rate : 0.92 (at least one center)
#>     Offered organs  : 21 (from all the centers)
#> 
#>     Region  : Veneto (Italy)
#>     Centers : Padova (#1)
#>     Acceptance rate : 0.9 (at least one center)
#>     Offered organs  : 10 (from all the centers)
get_centers(nitp)
#> $lombardia
#>     Center           : Pavia (Lombardia --- Italy)
#>     Acceptance rate  : 0.8
#>     Offered organs   : 11
#> 
#>     Center           : Bergamo (Lombardia --- Italy)
#>     Acceptance rate  : 0.5
#>     Offered organs   : 7
#> 
#>     Center           : Milano (Lombardia --- Italy)
#>     Acceptance rate  : <inherit from the region rate>
#>     Offered organs   : 3
#> 
#> 
#> $veneto
#>     Center           : Padova (Veneto --- Italy)
#>     Acceptance rate  : 0.9
#>     Offered organs   : 10
# TODO
```

## Installation

You can install viper from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("UBESP-DCTV/clumpr")
```

## Bug reports

If you encounter a bug, please file a
[reprex](https://github.com/tidyverse/reprex) (minimal reproducible
example) to <https://github.com/UBESP-DCTV/clumpr/issues>

## References

**Protocollo Nazionale per la Gestione delle Eccedenze di Tutti i
Programmi di Trapianto**
([pdf](http://www.policlinico.mi.it/AMM/nitp/area_operatore/linee_guida/03/ProtocolloNazionaleGestioneEccedenzeCNTO140804.pdf))
