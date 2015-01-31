#'@title Retrieve the schema specifications for different object classes
#'@rdname schemas
#'@aliases schemas
#'@description *_schema functions grab the schema specifications for each
#'class of objects in the SWAPI database. This can be used to predict what
#'structure data returned from the API will take.
#'
#'@param parse_result whether to simplify the results before they
#'are returned. This is FALSE by default.
#'
#'@param ... additional arguments to pass to httr's GET function,
#'such as timeout settings or user agents.
#'
#'@examples
#'get_planet_schema()
#'
#'@seealso \code{\link{entries}} for retrieving data about
#'individual planets, schemas, etc, or \code{\link{all_entries}}
#'for retrieving all of the data in a particular category.
#'@return a list-based representation of the relevant JSON schema.
#'@export
get_planet_schema <- function(parse_result = FALSE, ...){
  result <- query("/planets/schema", ...)
  if(parse_result){
    result <- schema_parse(result)
  }
  return(result)
}

#'@rdname schemas
#'@export
get_species_schema <- function(parse_result = FALSE, ...){
  result <- query("/species/schema", ...)
  if(parse_result){
    result <- schema_parse(result)
  }
  return(result)
}

#'@rdname schemas
#'@export
get_film_schema <- function(parse_result = FALSE, ...){
  result <- query("/films/schema", ...)
  if(parse_result){
    result <- schema_parse(result)
  }
  return(result)
}

#'@rdname schemas
#'@export
get_vehicle_schema <- function(parse_result = FALSE, ...){
  result <- query("/films/schema", ...)
  if(parse_result){
    result <- schema_parse(result)
  }
  return(result)
}

#'@rdname schemas
#'@export
get_starship_schema <- function(parse_result = FALSE, ...){
  result <- query("/starships/schema", ...)
  if(parse_result){
    result <- schema_parse(result)
  }
  return(result)
}

#'@rdname schemas
#'@export
get_person_schema <- function(parse_result = FALSE, ...){
  result <- query("/people/schema", ...)
  if(parse_result){
    result <- schema_parse(result)
  }
  return(result)
}