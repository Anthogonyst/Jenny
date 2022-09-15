context("Data consistency")

testthat::test_that("No params", {
  testthat::expect_identical(Jenny(), 8675309)
})

testthat::test_that("Integer param", {
  testthat::expect_identical(Jenny(420), 8675309)
})

testthat::test_that("Character param", {
  testthat::expect_identical(Jenny("number"), 8675309)
})

testthat::test_that("Multiple params", {
  testthat::expect_identical(Jenny("number", 420), 8675309)
})
