#' Add density plot(with specified colours) to a pairs plot
#'
#' @param x
#' @param y
#' @param dfunc.col
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
dfunc_up <- function(x, y, dfunc.col = grey.colors(10), ...){
  require(MASS)

  # function for plotting 2d kernel density estimates in pairs() plot.
  kde = kde2d(x,y)
  image(kde, col = dfunc.col, add = TRUE)
}
