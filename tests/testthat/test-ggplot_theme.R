
library(ggplot2)
library(tidyverse)
library(testthat)

test_that("Testing iceberg_theme (BLANK)", {
  expect_s3_class(iceberg_theme(), "theme")
})

