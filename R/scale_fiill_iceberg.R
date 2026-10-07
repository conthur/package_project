library(ggplot2)
library(devtools)
library(roxygen2)

#' scale_fill_iceberg()
#'
#' A custom scale_fill_manual() which uses the iceberg_palette
#' 
#' @param reverse swtiches
#'
#' @return a ggplot object used to scale colors
#' 
#' @export
scale_fill_iceberg <- function(reverse = FALSE) {
  # colors
  colors = iceberg_palette
  
  # if reverse = TRUE
  if(reverse) {
    colors = rev(colors)
  }
  
  # access scale_fill in ggplot
  ggplot2::scale_fill_manual(values = iceberg_palette)
}
