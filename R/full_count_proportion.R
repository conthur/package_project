library(tidyverse)
library(devtools)

#' full_count_proportion()
#'
#' A helper function 
#'
#' @description 
#' A function which takes a data frame and a numerical column name and returns the same data frame but with the proportion
#' 
#' @param df the data frame to make edits to
#' @param column_name the name of the numerical column to  calculate the total sum from all rows and the proportion
#' 
#' @return df: data frame with two new columns
#' 
#' @examples
#' library(iceberg_package)
#'
#' df %>% full_count_proportion(number, round = TRUE)
#' 
#' @export
full_count_proportion <- function(df, column_name, round = FALSE) {
  
  column_name <- rlang::as_name(rlang::ensym(column_name))
  
  if (!(column_name %in% names(df))) {
    stop(
      sprintf("Column '%s' does not exist in the data frame.", column_name),
      call. = FALSE
    )
  }
  
  # Check whethar the column is numeric
  if (!is.numeric(df[[column_name]])) {
    stop(
      sprintf("Column '%s' must be numeric.", column_name),
      call. = FALSE
    )
  }
  
  # Calculate proportions
  df <- df %>%
    mutate(
      prop = .data[[column_name]] / sum(.data[[column_name]])
    )
  
  # Optionally round the proportions
  if (round) {
    df <- df %>%
      mutate(prop = base::round(prop, 2))
  }
  
  return(df)
}
