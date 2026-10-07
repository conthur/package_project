library(tidyverse)
library(devtools)

#' full_count_proportion()
#'
#' A helper function 
#'
#' @description
#' A short description...
#' 
#' @param df: a dataframe
#' @param column_name: the name of the numerical column to  calculate the total sum from all rows and the proportion
#' @return df: data frame with two new columns
#' 
#' @examples
#' library(iceberg_package)
#'
#' df %>% full_count_proportion(., number, round = TRUE)
#' 
#' @export
full_count_proportion = function(df, column_name, round = FALSE) {
  
  # Checks if the column is in the df
  if (!(column_name %in% names(df))) {
    stop(
      sprintf("Column '%s' must be numeric.", column),
      call. = FALSE
    )
  }
  
  # Checks if the column name is numeric
  if (!is.numeric(df[[column_name]])) {
    stop(
      sprintf("Column '%s' must be numeric.", column),
      call. = FALSE
    )
  }
  
  # mutate with full count and proportions
  df = df %>%
    mutate(full_count = sum(column_name)) %>%
    mutate(prop = column_name / full_count)

  # if round is specified, round column to the nearest hundredth
  df$column_name = ifelse(round == TRUE, round(df$column_name, 2), df$column_name)

  return(df)
}
