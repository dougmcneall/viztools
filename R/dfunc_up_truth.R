#' plotting 2d kernel density estimates in pairs() plot,
#' adding a data point overlay in the last row of the input matrix.
#'
#' @param x
#' @param y
#' @param dfunc.col
#' @param col
#' @param bg
#' @param cex
#' @param pch
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
dfunc_up_truth = function(x,y, dfunc.col = grey.colours(10), col = 'black', bg = 'red', cex = 1.5, pch = 21, ...){
  # function for plotting 2d kernel density estimates in pairs() plot,
  # adding a data point overlay in the last row of the input matrix.
  require(MASS)

  xtrue <- tail(x,1)
  ytrue <- tail(y,1)

  xdash <- head(x, -1)
  ydash <- head(y, -1)

  kde <- kde2d(xdash,ydash)
  image(kde, col = dfunc.col, add = TRUE)
  points(xtrue, ytrue, pch = pch, col = col, bg = bg, cex =cex)
}
