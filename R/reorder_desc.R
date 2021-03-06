d <- factor(c("hello", "blue", "cake", "wall"))

#' Reorder factor levels in descending order
#'
#' Reorder an exisiting factor levels in descending order, where the new factor levels are arranged in opposite orientation to the character readout
#'
#' @param d factor
#'
#'
#' @return factor
#' @export
#' @examples
#' #' reorder_desc(d)

reorder_desc <- function(d){
  if (class(d) == "factor"){
    aesc_d <- stats::reorder(d, c(1:length(d)))
    desc_d <- dplyr::desc(sort(attr(aesc_d, "scores")))
    stats::reorder(aesc_d, desc_d)
  } else {
    message("Error. Input is not of class factors, it is of class ", class(d))
  }
}

#devtools::load_all("./R", TRUE)
