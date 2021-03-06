% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ratioplot.R
\name{ratioplot}
\alias{ratioplot}
\title{Creates plot of pass/fail ratio for repeated test series.}
\usage{
ratioplot(simq = seq(0.01, 0.2, by = 0.01), colors = c("RED", "GREEN"), ...)
}
\arguments{
\item{simq}{Vector. Probabilities of failure (q) to use for simulated
trials. Defaults to range of q = 0.01 to q = 0.5 in 0.05 steps.}

\item{colors}{Vector. Passes color options to \code{barplot}. Defaults to
red and green.}

\item{...}{Passes values to \code{dgroups}.}
}
\value{
none
}
\description{
\code{ratioplot} Creates plot of pass/fail ratio for repeated test
 series. By simulated probability of reaction.
}
\examples{
 # recommended to use num.series value greater than or equal to 1000.
 ratioplot(simq = seq(0.01, 0.20, by = 0.01), num.series = 100)
 ratioplot(simq = seq(0.01, 0.20, by = 0.01), num.series = 100,
           colors = c("BLUE", "BLACK"))
           
}
\seealso{
\code{\link{dgroups}} 
  \code{\link{dseries}}
  \code{\link{dtrials}}
  \code{\link{droptest}}
}
\author{
Chad Ross \email{chad.ross@gmail.com}
}
