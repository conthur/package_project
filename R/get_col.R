
#' get_col()
#'
#' A helper function 
#'
#' @param the name of the color whose hash you want to return
#' @return a color's hash in the iceberg_palette
#' 
#' @examples
#' library(iceberg_package)
#' 
#' get_col(light_grey)
#' 
#' @export
get_col = function(name) {
  name_str = deparse(substitute(name))
  iceberg_palette[[name_str]]
}