#' Scatter points with colour as a third dimension
#'
#' @param x
#' @param y
#' @param z
#' @param cols
#' @param legend.title
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
cpoints <- function(x,y,z,cols,legend.title,...){
  # scatter plot with colour
  # as a third dimension

  require(fields)

  ramp <- colorRamp(cols)

  plot.col   <-  rgb(ramp((z - min(z))/(max(z) - min(z))), max = 255)

  legend.col <-  rgb(ramp(seq(0,1,length = length(z))), max = 255)

  zr <- range(z)

  points(x,y, col = plot.col, ...)

}
