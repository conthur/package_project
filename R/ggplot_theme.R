
library(ggplot2)
library(tidyverse)
data("mpg")




ggplot_theme = function() {
  ggplot2::theme_minimal() +
    ggplot2::theme(
      
      color_palette = c(
        navy = "#000080",
        light_grey = "#F7F7F7"
      )
      
      plot.title = element_text(color = navy,
                                lineheight = 12,
                                ),
      
      plot.background = element_rect(fill = color_palette[light_grey]),
      
      axis.title.x = element_text(color = color_palette[navy],
      axis.title.y = element_text(color = color_palette[navy]),
      
      axis.text.y = element_text(color = color_paletter[navy]),
      axis.text.x = element_text(color = color_paletter[navy]), 
    )
}

# sample ggplot_graph for testing purposes
mpg_avg_displ = mpg %>%
  group_by(manufacturer) %>%
  summarise(avg_displacement = mean(displ))

ggplot(mpg_avg_displ, aes(x = manufacturer, 
                          y = avg_displacement)) +
  geom_col() +
  labs(title = "Car Manufacturer by Average Displacment (1998 - 2008)",
       xaxis = "Manufacturer", 
       yaxis = "Mean Displacement") +
  scale_y_packakge() +
  ggplot_theme() 
