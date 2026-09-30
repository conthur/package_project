library(ggplot2)
library(devtools)
library(roxygen2)

#' scale_fill_iceberg()
#'
#' A custom scale_fill_manual() which uses the iceberg_palette
#'
#' @return a ggplot object used to scale colors
#' 
#' @export
scale_fill_iceberg <- function(colors = NULL, reverse = FALSE) {
  iceberg_palette = ifelse(is_null(colors), )
}
