% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pums.R
\name{get_pums}
\alias{get_pums}
\title{Load data from the American Community Survey Public Use Microdata Series API}
\usage{
get_pums(
  variables,
  state,
  year = 2018,
  survey = "acs5",
  rep_weights = NULL,
  recode = FALSE,
  show_call = FALSE,
  key = NULL
)
}
\arguments{
\item{variables}{A vector of variables from the PUMS API.}

\item{state}{A state, or vector of states, for which you would like to
request data.}

\item{year}{The data year of the 1-year ACS sample or the endyear of the
5-year sample. Defaults to 2018.}

\item{survey}{The ACS survey; one of either \code{"acs1"} or \code{"acs5"}
(the default).}

\item{rep_weights}{Whether or not to return housing unit, person, or both
housing and person-level replicate weights for calculation of standard
errors; one of \code{"person"}, \code{"housing"}, or \code{"both"}.}

\item{recode}{If TRUE, recodes variable values using Census data dictionary
and creates a new \code{*_label} column for each variable that is recoded.
Only available for 2017 and 2018 data. Defaults to FALSE.}

\item{show_call}{If TRUE, display call made to Census API. This can be very
useful in debugging and determining if error messages returned are due to
tidycensus or the Census API. Copy to the API call into a browser and see
what is returned by the API directly. Defaults to FALSE.}

\item{key}{Your Census API key. Obtain one at
\url{http://api.census.gov/data/key_signup.html}}
}
\value{
A tibble of microdata from the ACS PUMS API.
}
\description{
Load data from the American Community Survey Public Use Microdata Series API
}
\examples{
\dontrun{
get_pums(variables = "AGEP", state = "VT")
get_pums(variables = c("AGEP", "ANC1P"), state = "VT", recode = TRUE)
get_pums(variables = "AGEP", state = "VT", survey = "acs1", rep_weights = "person")
}

}
