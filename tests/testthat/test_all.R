context("Retrieve all entities in a class")
test_that("Classes can be retrieved", {
  expect_true({get_all_planets();TRUE})
  expect_true({get_all_species();TRUE})
  expect_true({get_all_films();TRUE})
  expect_true({get_all_vehicles();TRUE})
  expect_true({get_all_starships();TRUE})
  expect_true({get_all_people();TRUE})
})

test_that("Classes can be retrieved and parsed", {
  expect_true({get_all_planets(parse_result = TRUE);TRUE})
  expect_true({get_all_species(parse_result = TRUE);TRUE})
  expect_true({get_all_films(parse_result = TRUE);TRUE})
  expect_true({get_all_vehicles(parse_result = TRUE);TRUE})
  expect_true({get_all_starships(parse_result = TRUE);TRUE})
  expect_true({get_all_people(parse_result = TRUE);TRUE})
})

test_that("Class continuation works", {
  expect_true({
    planet_1 <- get_all_planets(parse_result = TRUE);
    planet_2 <- get_all_planets(getElement(planet_1,"next"));
    TRUE})
})