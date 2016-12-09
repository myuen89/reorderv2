d <- factor(c("hello", "blue", "cake", "wall"))

reorder_desc <- function(d){
  aesc_d <- reorder(d, c(1:length(d)))
  desc_d <- dplyr::desc(sort(attr(aesc_d, "scores")))
  reorder(aesc_d, desc_d)
}

#devtools::load_all("./R", TRUE)
