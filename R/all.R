#'@title Retrieve the data associated with every entry in a class.
#'@rdname all_entries
#'@aliases all_entries
#'@export
get_all_planets <- function(parse_result = FALSE, ...){
  result <- query("/planets/", ...)
  if(parse_result){
    result$results <- lapply(result$results,planet_entry_parse)
  }
  return(result)
}

#'@rdname entries
#'@export
get_all_species <- function(parse_result = FALSE, ...){
  result <- query("/species/", ...)
  if(parse_result){
    result$results <- lapply(result$results,species_entry_parse)
  }
  return(result)
}

#'@rdname entries
#'@export
get_all_films <- function(parse_result = FALSE, ...){
  result <- query("/films/", ...)
  if(parse_result){
    result$results <- lapply(result$results,film_entry_parse)
  }
  return(result)
}

#'@rdname entries
#'@export
get_all_vehicles <- function(parse_result = FALSE, ...){
  result <- query("/vehicles/", ...)
  if(parse_result){
    result$results <- lapply(result$results,vehicle_entry_parse)
  }
  return(result)
}

#'@rdname entries
#'@export
get_all_starships <- function(parse_result = FALSE, ...){
  result <- query("/starships/", ...)
  if(parse_result){
    result$results <- lapply(result$results,vehicle_entry_parse)
  }
  return(result)
}

#'@rdname entries
#'@export
get_all_people <- function(parse_result = FALSE, ...){
  result <- query("/people/", ...)
  if(parse_result){
    result$results <- lapply(result$results,person_entry_parse)
  }
  return(result)
}