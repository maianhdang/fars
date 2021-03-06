% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fars_map_state.R
\name{fars_map_state}
\alias{fars_map_state}
\title{fars_map_state}
\usage{
fars_map_state(state.num, year)
}
\arguments{
\item{state.num}{an indentified number of state.}

\item{year}{a year corresponding to the data}
}
\value{
Function \code{fars_map_state} returns a graphic plots the locations of accidents
within a state in a year, by \code{LONGITU} and \code{LATITUDE}.
}
\description{
Function \code{fars_map_state} plots the locations of accidents of a state
in a specific year by longtitude and latitude.
}
\note{
If \code{state.num} is not integer, it would be transformed to \code{\link{as.integer}}.
If \code{state.num} does not exist in the data, it would be reported.
If the location of a accident is \code{NA}, it would not be plotted in the map

If \code{year} is not integer, it would be transfered to \code{\link{as.integer}}.
}
\examples{
\dontrun{fars_map_state(1,2015)}
\dontrun{fars_map_state(2, 2016)}

}
