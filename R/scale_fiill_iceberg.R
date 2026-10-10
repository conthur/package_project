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
  
  # define all colors from iceberg_palette
  colors = c(
    get_col(navy_blue),
    get_col(royal_blue),
    get_col(sky_blue),
    get_col(teal),
    get_col(grey),
    get_col(light_grey)
  )
  
  # reverse the order of colors if reverse is TRUE
  if (reverse) {
    colors = rev(colors)
  }
  
  # define the scaling function
  ggplot2::discrete_scale(
    aesthetics = "fill",
    scale_name = "iceberg",
    palette = function(n) {
      colors[seq_len(n)]
    }
  )
}
