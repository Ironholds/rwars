#Backend for all API calls.
#'@importFrom httr stop_for_status content GET user_agent
query <- function(url_params, ...){
  if(grepl(x = url_params, pattern = "http")){
    url <- url_params
  } else {
    url <- paste0("http://swapi.co/api", url_params)
  }
  result <- GET(url, user_agent("rwars - https://github.com/Ironholds/rwars"), ...)
  stop_for_status(result)
  return(content(result))
}

#Parse the *_schema results
schema_parse <- function(result){
  result$required <- unlist(result$required)
  result['$schema'] <- NULL
  return(result)
}

#Safe parser base for entries
parser_base <- function(result, field){
  if(length(result[field]) > 0){
    result[[which(names(result) == field)]] <-  unname(unlist(result[field]))
  } else {
    result[field] <- NA
  }
  return(result)
}

planet_entry_parse <- function(result){
  result <- parser_base(result, "residents")
  result <- parser_base(result, "films")
  return(result)
}
species_entry_parse <- function(result){
  result <- parser_base(result, "people")
  result <- parser_base(result, "films")
  return(result)
}

film_entry_parse <- function(result){
  result <- parser_base(result, "characters")
  result <- parser_base(result, "planets")
  result <- parser_base(result, "starships")
  result <- parser_base(result, "vehicles")
  result <- parser_base(result, "species")
  return(result)
}

vehicle_entry_parse <- function(result){
  result <- parser_base(result, "films")
  result <- parser_base(result, "pilots")
  return(result)
}

person_entry_parse <- function(result){
  result <- parser_base(result, "films")
  result <- parser_base(result, "species")
  result <- parser_base(result, "vehicles")
  result <- parser_base(result, "starships")
  return(result)
}