library(devtools)
library(roxygen2)
library(showtext)

#' The Iceberg Theme
#'
#' @description
#' A theme developed in R which includes a color palette modeled after icebergs. This theme consists of all of the colors in the iceberg_palette, which includes: 
#' + navy blue 
#' + sky blue
#' + teal
#' + light grey
#' + grey
#'
#' @return a ggplot theme object
#' 
#' @param scale_fill_iceberg: initialized as FALSE, if TRUE the scale_fill_iceberg() function will be called to complement your fill found in aes()
#' 
#' @examples
#' # library(iceburg_theme)
#' 
#' ggplot(mtcars, aes(x = wt, y = mpg, fill = mpg)) +
#'   geom_point() + 
#'   iceburg_theme(scale_fill_iceberg = TRUE)
#' 
#' @export
iceberg_theme = function(scale_fill_iceberg = FALSE) {
    
  # change font to Oswald
  font_add_google("Oswald", "Oswald")
  showtext_auto()
    
  options(ggplot2.discrete.fill = iceberg_palette)
  
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
        
      # legend border
      legend.background = element_rect(color = get_col(navy), 
                                       fill = NA,
                                       linewdith = 1),
      # Panel
      panel.background = element_rect(fill = get_col(light_grey), color = NA)
      
      
    ) + 
    if (scale_fill_iceberg) {
      scale_fill_iceberg()
    }
}




