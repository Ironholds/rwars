#Backend for all API calls.
#'@importFrom httr stop_for_status content GET
query <- function(url_params, ...){
  if(grepl(x = url_params, pattern = "http")){
    url <- url_params
  } else {
    url <- paste0("http://swapi.co/api", url_params)
  }
  result <- GET(url, ...)
  stop_for_status(result)
  return(content(result))
}

#Parse the *_schema results
schema_parse <- function(result){
  result$required <- unlist(result$required)
  result['$schema'] <- NULL
  return(result)
}

planet_entry_parse <- function(result){
  result$residents <- unlist(result$residents)
  result$films <- unlist(result$films)
  return(result)
}
species_entry_parse <- function(result){
  result$people <- unlist(result$people)
  result$films <- unlist(result$films)
  return(result)
}

#Film entries have their own syntax
film_entry_parse <- function(result){
  result$characters <- unlist(result$characters)
  result$planets <- unlist(result$planets)
  result$starships <- unlist(result$starships)
  result$vehicles <- unlist(result$vehicles)
  result$species <- unlist(result$species)
  return(result)
}

vehicle_entry_parse <- function(result){
  result$films <- unlist(result$films)
  if(length(result$pilots) > 0){
    result$pilots <- unlist(result$pilots)
  } else {
    result$pilots <- NA
  }
  return(result)
}