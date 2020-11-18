#' Add 2d kernel density estimates to pairs() plot.
#'
#' @param x
#' @param y
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
dfunc <- function(x,y,...){
  require(MASS)

  # function for plotting 2d kernel density estimates in pairs() plot.
  kde <- kde2d(x,y)
  image(kde, col = br, add = TRUE)

}
