context("Schema retrieval")
test_that("Schemas can be retrieved", {
  expect_true({get_planet_schema();TRUE})
  expect_true({get_species_schema();TRUE})
  expect_true({get_film_schema();TRUE})
  expect_true({get_vehicle_schema();TRUE})
  expect_true({get_starship_schema();TRUE})
  expect_true({get_person_schema();TRUE})
})