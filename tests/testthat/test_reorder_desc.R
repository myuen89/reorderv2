context("Reording factors - descending")

test_that("reorder_desc reorders factor levels in descending order", {
  x <- factor(c('leopard', 'kilo', 'gryphon', 'foxtrot'))
  y <- factor(c('foxtrot', 'gryphon', 'kilo', 'leopard'))

  expect_identical(levels(reorder_desc(x)), levels(y))
  expect_identical(levels(reorder_desc(y)), as.character(x))
})
