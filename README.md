clumpr
================

<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Travis Build
Status](https://travis-ci.org/UBESP-DCTV/clumpr.svg?branch=develop)](https://travis-ci.org/UBESP-DCTV/clumpr)
[![Coverage
status](https://codecov.io/gh/UBESP-DCTV/clumpr/branch/develop/graph/badge.svg)](https://codecov.io/github/UBESP-DCTV/clumpr?branch=develop)
[![CRAN Status
Badge](https://www.r-pkg.org/badges/version/clumpr.svg)](http://cran.R-project.org/)

**C**urrent transp**L**ant s**U**rplus **M**anagement **P**rotocol in
**R**

Last update: 2018-02-16

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
