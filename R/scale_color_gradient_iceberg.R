library(ggplot2)
library(devtools)
library(roxygen2)

#' scale color gradient iceberg
#'
#' A function used to make a custom scale_color_gradient() using iceberg_palette
#'
#' @return a ggplot object which scales gradients
#' 
#' @export
scale_color_gradient_iceberg = function() {
  ggplot2::scale_color_gradient(
    low = get_col(sky_blue),
    high = get_col(navy_blue)
  )
}
