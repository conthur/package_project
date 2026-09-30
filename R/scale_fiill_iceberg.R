library(ggplot2)
library(devtools)
library(roxygen2)

#' scale_fill_iceberg
#'
#' A palette developed to be used in the iceberg_package()
#'
#' @return a ggplot object used to scale colors
#' 
#' @export
scale_fill_iceberg = function() {
  ggplot2::scale_fill_manual(
    values = iceberg_palette
  )
}