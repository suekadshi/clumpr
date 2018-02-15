.onLoad <- function(libname, pkgname) {
  op <- options()
  op.clumpr <- list(
    clumpr.foo = 'foo'
  )
  toset <- !(names(op.clumpr) %in% names(op))
  if (any(toset)) options(op.clumpr[toset])
  invisible()
}

.onAttach <- function(libname, pkgname) {
  invisible()
}

.onUnload<- function(libname, pkgname) {
  invisible()
}
