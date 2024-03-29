#' Multiple line plots for sensitivity analysis
#'
#' @param X_oaat Matrix of one-at-time input design generated by oaat_design in package emtools
#' @param Y_oaat Normalised matrix of one-at-a-time output, with variables in the columns and rows matching X_oaat
#' @param n_oaat Number of samples for each input
#' @param nr Number of rows in the plot
#' @param nc Number of colums in the plot
#' @param ...
#'
#' @return A plot that overlays multiple one-at-a-time sensitivity estimates. Shading is not included for clarity.
#' @export
#'
#' @examples
            oaatLinePlotMulti <- function(X_oaat, Y_oaat, n_oaat, nr, nc, cols, ...){




              par(mfrow = c(nr,nc), oma = c(0.1,0.1,3,0.1), mar = c(2,2,3,1))

              for(i in 1:ncol(X_oaat)){
                ix <- seq(from = ((i*n_oaat) - (n_oaat-1)), to =  (i*n_oaat), by = 1)

                plot(X_oaat[ix,i], Y_oaat[ix,1],
                     xlim = c(0,1), ylim = c(0,1),
                     xlab = colnames(X_oaat)[i],
                     type= 'n',
                     bty = 'n')

                for(j in 1:ncol(Y_oaat)){
                  lines(X_oaat[ix,i], Y_oaat[ix, j], lty = 'solid', col = cols[j], ...)
                  mtext(colnames(X_oaat)[i], side = 3, line = 0.5)

                }

              }

            }
