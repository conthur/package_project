
#' get_col()
#'
#' A helper function 
#'
#' @param name  name of the color whose hash you want to return
#' 
#' @return a color's hash in the iceberg_palette
#' 
#' @examples
#' library(iceberg_package)
#' 
#' get_col(light_grey)
#' 
#' @export
get_col = function(name) {
  name <- substitute(name)
  iceberg_palette[[as.character(name)]]
}