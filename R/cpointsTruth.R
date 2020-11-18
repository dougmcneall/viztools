#'  Helper function for diagonal panel in pairs()
#'  plot points in colour palette, and the last point in a different colour
#'
#' @param x
#' @param y
#' @param z
#' @param cols
#' @param truecol
#' @param legend.title
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
cpointsTruth <- function(x,y,z,cols,truecol = 'green',legend.title,...){
  # helper function for diagonal panel in pairs()
  # plot points in colour palette, and the last point in a different colour

  require(fields)

  ramp <- colorRamp(cols)

  xtrue <- tail(x,1)
  ytrue <- tail(y,1)

  xdash <- head(x, -1)
  ydash <- head(y, -1)
  zdash <- head(z,-1)

  plot.col   <-  rgb(ramp((zdash - min(zdash))/(max(zdash) - min(zdash))), max = 255)

  legend.col <-  rgb(ramp(seq(0,1,length = length(zdash))), max = 255)

  zr <- range(zdash)

  points(xdash,ydash, col = plot.col, ...)
  points(xtrue,ytrue, col = 'black', bg = truecol, pch = 21, cex = 2)
}
