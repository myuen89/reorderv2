context("Reording factors - descending")

test_that("reorder_desc reorders factor levels in descending order", {
  x <- factor(c('leopard', 'kilo', 'gryphon', 'foxtrot'))
  y <- factor(c('foxtrot', 'gryphon', 'kilo', 'leopard'))
  z <- c("hello", "blue", "cake", "wall")

  expect_identical(levels(reorder_desc(x)), levels(y))
  expect_identical(levels(reorder_desc(y)), as.character(x))
  expect_message(reorder_desc(z), regexp = "Error. Input is not of class factors, it is of class ", class(d))
})
