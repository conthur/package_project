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
#' ggplot(mtcars, aes(x = wt, y = mpg, fill = mpg)) + geom_point() + iceburg_theme(scale_fill_iceberg = TRUE)
#' 
#' @export
iceberg_theme = function(scale_fill_iceberg = FALSE) {
    
  font <- "Oswald"
  if (!font %in% sysfonts::font_families()) {
    tryCatch(
      sysfonts::font_add_google("Oswald", "Oswald"),
      error = function(e) {
        message("Could not download Oswald; using default font.")
        font <<- "sans"
      }
    )
  }
  
  # change font to Oswald
  showtext::showtext_auto()
    
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
                                  fill = NA),
        
      # legend border
      legend.background = element_rect(color = get_col(navy_blue), 
                                       fill = NA),
      # Panel
      panel.background = element_rect(fill = get_col(light_grey), color = NA)
      
    )
}




