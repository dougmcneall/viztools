#' Augment pairs plots with different colours
#'
#' @param ...
#' @param col
#' @param pch
#'
#' @return
#' @export
#'
#' @examples
pairs_aug <- function(..., col = c('grey', 'red'), pch = c(21,19)){
  # A pairs function that takes a number of matrices, and plots them
  # up in different colours

  dat <- list(...)

  column.check <- unlist(lapply(dat,ncol))

  stopifnot(length(unique(column.check))==1)

  reps <- unlist(lapply(dat,nrow))

  datmat <- NULL

  colvec <- rep(col, c(reps, recursive = TRUE))
  pchvec <- rep(pch, c(reps, recursive = TRUE))

  for(i in 1:length(dat)){
    datmat <- rbind(datmat, as.matrix(dat[[i]]))
  }

  pairs(datmat, col = colvec, pch = pchvec)

}
