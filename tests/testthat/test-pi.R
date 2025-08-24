test_that("lower boundary percentile works", {
  expect_equal(lower_pi(0:20, CI=0.9), 1)

  # error is generated for invalid CI
  expect_error(lower_pi(rnorm(100), -1))
  expect_error(lower_pi(rnorm(100), "A"))
  expect_error(lower_pi(rnorm(100), c(0.7, 0.9)))
})

test_that("upper boundary percentile works", {
  expect_equal(upper_pi(0:20, CI=0.9), 19)

    # error is generated for invalid CI
    expect_error(upper_pi(rnorm(100), -1))
    expect_error(upper_pi(rnorm(100), "A"))
    expect_error(upper_pi(rnorm(100), c(0.7, 0.9)))
})
