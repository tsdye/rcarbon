% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utilities.R
\name{combine}
\alias{combine}
\title{Combine multiple CalDates Class Objects into one.}
\usage{
combine(..., fixIDs = FALSE)
}
\arguments{
\item{...}{\code{CalDates} class objects to be concatenated.}

\item{fixIDs}{logical. If set to TRUE, each date is given a new ID based on sequential integer. Default is FALSE}
}
\value{
An object of class CalDates
}
\description{
Combine multiple CalDates Class Objects into one.
}
\examples{
 
x1 = calibrate(c(2000,3400),c(20,20),ids=1:2)
x2 = calibrate(c(4000,3000),c(30,30),calCurves=c('intcal20','marine20'),
resOffsets=c(0,30),resErrors=c(0,20),ids=3:4)
mcurve <- mixCurves('intcal20','marine20',p=0.7,resOffsets=300,resErrors=20)
x3 = calibrate(5300,20,calCurves=mcurve,ids=5)
x = combine(x1,x2,x3)
## x$metadata
}
\seealso{
\code{\link{calibrate}}
}
