context("Entity retrieval")
test_that("Entities can be retrieved", {
  expect_true({get_planet(1);TRUE})
  expect_true({get_species(1);TRUE})
  expect_true({get_film(1);TRUE})
  expect_true({get_vehicle(4);TRUE})
  expect_true({get_starship(2);TRUE})
  expect_true({get_person(1);TRUE})
})

test_that("Entities can be retrieved and parsed", {
  expect_true({get_planet(1, TRUE);TRUE})
  expect_true({get_species(1, TRUE);TRUE})
  expect_true({get_film(1, TRUE);TRUE})
  expect_true({get_vehicle(4, TRUE);TRUE})
  expect_true({get_starship(2, TRUE);TRUE})
  expect_true({get_person(1, TRUE);TRUE})
})