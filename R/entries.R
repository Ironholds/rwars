#'@title Retrieve the data associated with a specific object
#'(planet, species, etc)
#'@rdname entries
#'@aliases entries
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
