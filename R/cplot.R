#' Scatter plot with colour as a third dimension
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
cplot <- function(x,y,z,cols,legend.title = 'legend.title',...){
  # scatter plot with colour
  # as a third dimension

  require(fields)
  par(mar = c(5,4,4,7), las = 1)

  ramp <- colorRamp(cols)

  plot.col   <-  rgb(ramp((z - min(z))/(max(z) - min(z))), max = 255)

  legend.col <-  rgb(ramp(seq(0,1,length = length(z))), max = 255)

  zr <- range(z)

  plot(x,y, col = plot.col, ...)

  image.plot(legend.only = TRUE,
             zlim = zr,
             col = legend.col,
             legend.args = list(text = legend.title, side = 3, line = 1.2)
  )
}
