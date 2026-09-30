test_that("get_col() works", {
  expect_equal(get_col(navy_blue), "#000080")
  expect_equal(get_col(sky_blue), "#87CEEB")
  expect_equal(get_col(teal), "#008080")
  expect_equal(get_col(royal_blue), "#4169E1")
  expect_equal(get_col(grey), "#808080")
  expect_equal(get_col(light_grey), "#F2F2F2")
})
