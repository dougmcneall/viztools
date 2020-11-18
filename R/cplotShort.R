#' Scatter plot with colour as a third dimension (no legend, for small plots)
#'
#' @param x
#' @param y
#' @param z
#' @param cols
#' @param zr
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
cplotShort <- function(x,y,z,cols,zr,...){
  # scatter plot with colour
  # as a third dimension (no legend, for small plots)
  require(fields)

  ramp <- colorRamp(cols)

  plot.col   <-  rgb(ramp((z - min(z))/(max(z) - min(z))), max = 255)
  legend.col <-  rgb(ramp(seq(0,1,length = length(z))), max = 255)

  zr <- range(z)
  plot(x,y, col = plot.col, ...)
}

