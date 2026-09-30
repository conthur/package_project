library(devtools)
library(roxygen2)
library(showtext)

#' The Iceberg Theme
#'
#' A theme developed in R which includes a color palette modeled after icebergs
#'
#' @return a ggplot theme object
#' 
#' @examples
#' # library(iceburg_theme)
#' 
#' ggplot(mtcars, aes(wt, mpg)) +
#'   geom_point() + 
#'   iceburg_theme()
#' 
#' @export
iceberg_theme = function() {
    
  font_add_google("Oswald", "Oswald")
  showtext_auto()
    
  ggplot2::theme_minimal() +
    ggplot2::theme(
        
      # text elements
      text = element_text(
        family = "Oswald",
        color = get_col(navy_blue)
      ),
        
      # title
      plot.title = element_text(color = get_col(navy_blue)),
        
      # background
      plot.background = element_rect(fill = get_col(light_grey)),
        
      # border of the plot
      panel.border = element_rect(color = get_col(navy_blue),
                                  fill = NA,
                                  linewidth = 1),
        
      # Panel
      panel.background = element_rect(fill = get_col(light_grey), color = NA)
    )
}




