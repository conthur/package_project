test_that("full_count_proportion adds a prop column with correct values", {
  df <- data.frame(group = c("a", "b", "c", "d"), number = c(1, 2, 3, 4))
  
  result <- full_count_proportion(df, number)
  
  expect_true("prop" %in% names(result))
  expect_equal(result$prop, c(0.1, 0.2, 0.3, 0.4))
})