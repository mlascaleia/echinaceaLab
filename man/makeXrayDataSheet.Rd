% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/manageXray.R
\name{makeXrayDataSheet}
\alias{makeXrayDataSheet}
\title{Create data sheet rows for x-ray progress in a given year.}
\usage{
makeXrayDataSheet(xrdf)
}
\arguments{
\item{xrdf}{an x-ray data frame for a given year, generated by makeXrayDf()}
}
\value{
a data frame with one row for each x-ray sheet. The data frame has
a column for the first and last letno on each sheet. There are also three
blank (NA) columns to be filled in during the ACE workflow -- one for grid
assembly, one for x-ray scanning, one for quality control by the lab manager.
}
\description{
This function takes in an x-ray data frame (see makeXrayDf()) and outputs
a data frame for the lab manager and volunteers to fill out when assembling
x-ray sheets or when using the x-ray machine.
}
\details{
When exporting this data frame as a .csv, make sure to specify na = ""
(so that the data frame isn't printed with those columns filled with NA) and
use row.names = TRUE, as the sheet numbers are the row.names.
}
\examples{
xr16 = makeXrayDf(hh.2016)
xrds16 = makeXrayDataSheet(xr16)
head(xrds16)
tail(xrds16)
table(xrds16$Experiment)
write.csv(xrds16, na = "", file = "xrayDatasheet2016.csv")
}
\keyword{datasheet}
\keyword{ds}
\keyword{x-ray}
\keyword{xray}
