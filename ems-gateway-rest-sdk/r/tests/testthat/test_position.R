# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test Position")

model.instance <- Position$new()

test_that("exchange_id", {
  # tests for the property `exchange_id` (character)
  # Exchange identifier used to identify the routing destination.

  # uncomment below to test the property
  #expect_equal(model.instance$`exchange_id`, "EXPECTED_RESULT")
})

test_that("data", {
  # tests for the property `data` (array[PositionData])

  # uncomment below to test the property
  #expect_equal(model.instance$`data`, "EXPECTED_RESULT")
})

