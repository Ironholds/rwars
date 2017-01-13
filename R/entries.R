#'@title Retrieve Data about a Specific DB Entry
#'@rdname entries
#'@aliases entries
#'
#'@description These functions return a specific DB entry's information - where
#'that entry can be a planet, species, vehicle, so on and so forth.
#'
#'@param id the numeric ID of the (planet, species, etc)
#'you want to retrieve. Note that IDs are not necessarily sequential;
#'IDs 3, 4 and 6 may exist, while ID 5 may error.
#'
#'@param parse_result whether to parse and simplify the data before
#'returning it. Set to FALSE by default.
#'
#'@param ... further arguments to pass to httr's GET function.
#'
#'@examples
#'#Retrieve an object by ID
#'looking_for_data_in_alderaan_places <- get_planet(2)
#'
#'@seealso retrieving entire classes of entries with \code{\link{all_entries}}.
#'@export
get_planet <- function(id, parse_result = FALSE, ...){
  result <- query(paste0("/planets/",id), ...)
  if(parse_result){
    result <- planet_entry_parse(result)
  }
  return(result)
}

#'@rdname entries
#'@export
get_species <- function(id, parse_result = FALSE, ...){
  result <- query(paste0("/species/",id), ...)
  if(parse_result){
    result <- species_entry_parse(result)
  }
  return(result)
}

#'@rdname entries
#'@export
get_film <- function(id, parse_result = FALSE, ...){
  result <- query(paste0("/films/",id), ...)
  if(parse_result){
    result <- film_entry_parse(result)
  }
  return(result)
}

#'@rdname entries
#'@export
get_vehicle <- function(id, parse_result = FALSE, ...){
  result <- query(paste0("/vehicles/",id), ...)
  if(parse_result){
    result <- vehicle_entry_parse(result)
  }
  return(result)
}

#'@rdname entries
#'@export
get_starship <- function(id, parse_result = FALSE, ...){
  result <- query(paste0("/starships/",id), ...)
  if(parse_result){
    result <-vehicle_entry_parse(result)
  }
  return(result)
}

#'@rdname entries
#'@export
get_person <- function(id, parse_result = FALSE, ...){
  result <- query(paste0("/people/",id), ...)
  if(parse_result){
    result <-person_entry_parse(result)
  }
  return(result)
}
