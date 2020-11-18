#' Reshape climate data for plotting
#'
#' @param dat
#' @param xvec
#' @param yvec
#'
#' @return
#' @export
#'
#' @examples
remap <- function(dat,xvec,yvec){
  # reshape climate data for plotting

  out <- t(matrix(dat, nrow = length(yvec),ncol = length(xvec)))
  out

}
