#'@title Retrieve Data about Every DB Entry in a Class
#'@rdname all_entries
#'@aliases all_entries
#'
#'@description these functions retrieve the data associated with \emph{every} entry
#'in a particular class of object, where that class may be planet, species,
#'vehicle, so on and so forth.
#'
#'@param query_continue whether this is a continuation of a previous query. Set to
#'NULL by default; the alternative is to provide this argument with the "next" URL
#'from a returned object - see the examples.
#'
#'@param parse_result whether to parse and simplify the result of the query.
#'Set to FALSE by default.
#'
#'@param ... further arguments to pass to httr's GET function.
#'
#'@examples
#'#Retrieve all planets, parsing
#'planets <- get_all_planets(parse_result = TRUE)
#'
#'#It's only returned some of the results! Use query_continue to get
#'#the rest.
#'second_set_of_planets <- get_all_planets(getElement(planets,"next"), parse_result = TRUE)
#'
#'@seealso retrieving individual entries with \code{\link{entries}}
#'@export
get_all_planets <- function(query_continue = NULL, parse_result = FALSE, ...){
  if(is.null(query_continue)){
    result <- query("/planets/", ...)
  } else {
    result <- query(query_continue, ...)
  }
  if(parse_result){
    result$results <- lapply(result$results,planet_entry_parse)
  }
  return(result)
}

#'@rdname all_entries
#'@export
get_all_species <- function(query_continue = NULL, parse_result = FALSE, ...){
  if(is.null(query_continue)){
    result <- query("/species/", ...)
  } else {
    result <- query(query_continue, ...)
  }
  if(parse_result){
    result$results <- lapply(result$results,species_entry_parse)
  }
  return(result)
}

#'@rdname all_entries
#'@export
get_all_films <- function(query_continue = NULL, parse_result = FALSE, ...){
  if(is.null(query_continue)){
    result <- query("/films/", ...)
  } else {
    result <- query(query_continue, ...)
  }
  if(parse_result){
    result$results <- lapply(result$results,film_entry_parse)
  }
  return(result)
}

#'@rdname all_entries
#'@export
get_all_vehicles <- function(query_continue = NULL, parse_result = FALSE, ...){
  if(is.null(query_continue)){
    result <- query("/vehicles/", ...)
  } else {
    result <- query(query_continue, ...)
  }
  if(parse_result){
    result$results <- lapply(result$results,vehicle_entry_parse)
  }
  return(result)
}

#'@rdname all_entries
#'@export
get_all_starships <- function(query_continue = NULL, parse_result = FALSE, ...){
  if(is.null(query_continue)){
    result <- query("/starships/", ...)
  } else {
    result <- query(query_continue, ...)
  }
  if(parse_result){
    result$results <- lapply(result$results,vehicle_entry_parse)
  }
  return(result)
}

#'@rdname all_entries
#'@export
get_all_people <- function(query_continue = NULL, parse_result = FALSE, ...){
  if(is.null(query_continue)){
    result <- query("/people/", ...)
  } else {
    result <- query(query_continue, ...)
  }
  if(parse_result){
    result$results <- lapply(result$results,person_entry_parse)
  }
  return(result)
}