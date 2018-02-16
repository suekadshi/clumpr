# clumpr 0.0.1.00054

* Updated `README` with starting setup examples
* Added `get_state()` generic, `get_state.center()` and `get_state.region()`
  methods to access to the state of a center or a region;
* Added `get_p_default()` generic and `get_p_default.region()` mothod to 
  access to the default probablity of acceptance for a center in a region 
  without an explicit one defined;
* Added `get_offered()` generic, `get_offered.center()` and
  `get_offered.region()` methods to access to the number of offered organs
  by centers and regions;
* Added `get_p_accept()` generic, `get_p_accept.center()` and
  `get_p_accept.region()` methods to access to the probability of
  acceptance for centers and regions;
* Added `print.region()` method;
* Added `get_centers.region()` method;
* Added `get_centers()` generic function to access to centers details;
* Provided storing of regions and states in lowercase while visualize them
  in Titlecase;
* Updated `regions` database in lowercase;
* Added import dependency from package `purrr`;
* Added tests for `set_centers()`;
* Added `set_centers()` to pass correct arguments to `region()`;
* Added `region()` constructor.

# clumpr 0.0.1.0007

* Added test for `zzz.R`;
* Defined generic function `get_region()` with method for class `center`;
* Reshaped badges in `README`.

# clumpr 0.0.0.9063

* Added support for Codecov
* Added support for Travis-CI
* Added dependecy from `R (>= 3.2)`
* Added tests for the constructor function `center()`;
* Provided `print.center()` methods;
* Created class `center` and its constructor function `center()`.

# clumpr 0.0.0.9006

* Added function `cat_line()` to `utils.R`;
* Added `.onAttach`, `.onLoad` `.onUnload` to `zzz.R` to provide package
  setup;
* Changed name in `clumper` according to "English" meanign.

# viper 0.0.0.9000

* Added support for `%>%` (pipe) operator to the package;
* Added a `NEWS.md` file to track changes to the package;
* Added a `README.rmd` and `README.md` files as welcome homepage to the 
  package;
* Added support fot test with `testthat` to the package;
* Provided basic structure to the package.
