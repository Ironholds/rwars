## Alderaan data in Alderaan places
An R client for the Star Wars API!

__Author:__ Oliver Keyes<br/>
__License:__ [MIT](http://opensource.org/licenses/MIT)<br/>
__Status:__ In development

###Description
This is a connector to the [SWAPI service](http://swapi.co/), a database of Star Wars metadata with an associated API. It can be used to retrieve data about everything from the films to individual vehicles, characters or planets. See the [introductory vignette](https://github.com/Ironholds/rwars/blob/master/vignettes/rwars.Rmd) for detailed information.

###Installation

The latest released version can be obtained via:

    library(devtools)
    install_github("ironholds/rwars", ref = "0.5.0")

To get the development version:

    library(devtools)
    install_github("ironholds/rwars")
    
###Dependencies
* R. Doy.
* [httr](https://github.com/hadley/httr/)
