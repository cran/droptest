#' droptest: Simulates LOX drop testing.
#'
#' Generates simulated data representing the LOX drop testing
#' process (also known as impact testing). Drop testing is expensive, time
#' consuming, and notoriously difficult to analyze. A simulated process allows
#' for accelerated study of test behavior.
#' 
#' Functions are provided to simulate trials, test series, and groups of test
#' series. Functions for creating plots specific to this process are also
#' included. Test attributes and criteria can be set arbitrarily. This work is
#' not endorsed by or affiliated with NASA.
#' 
#' Drop testing -- sometimes called impact testing -- is used to evaluate if a
#' material will interact with liquid oxygen (LOX). The material is exposed to
#' the LOX and an impactor is dropped onto the sample. Each drop is a bernoulli 
#' trial where a reaction is a failure and a non-reaction is a success. The
#' specified number of trials -- until failure -- completes one test.
#'
#' While fundamentally a binomial process, drop testing -- performed by the
#' military and NASA -- yields results that are difficult to analyze. Numerous
#' tech briefs and standards have attempted to address the problem (see below
#' for more information). Testing stops immediately once the failure condition
#' is reached. If the failure condition occurs on drop one or two -- depending
#' on the failure criteria -- then the test returns only one or two result
#' values. Alternatively, if a material passes, or if the failure condition
#' occurs on the last trial, then the test returns as many result values
#' as trials.
#'
#' Simulation can be used to examine the behavior of this test procedure.
#'
#' Inspired by NASA Technical Note "Computer Simulation of Threshold Sensitivity
#' Determinations" (NASA-TN-D-7663). Gayle (1974).
#' \url{https://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/19750004618.pdf}
#' 
#' @section Definitions:
#' 
#' \itemize{
#'  \item \strong{Trial:} A simulated bernoulli trial that represents one drop
#'  of the impactor onto a material sample. Hence a trial is also referred to as
#'  a drop. Where q is the probability of failure. A reaction is recorded as a
#'  failure. Where p is the probability of success. A non-reaction is recorded
#'  as a success. Where \eqn{p = 1 - q}.
#'  See \url{https://en.wikipedia.org/wiki/Bernoulli_trial}
#' 
#'  \item \strong{Drop Test:} A collection of simulated trials (drops) generated
#'  with equal parameters (q, number of trials, failure criteria, etc). When the
#'  failure criteria is reached the test is immediately terminated and no more
#'  trials are completed. The sooner a test reaches the failure criteria the
#'  less total trials for that particular test. A test with no failures will
#'  always contain the maximum number of trials as defined in the function
#'  parameters.
#' 
#'  \item \strong{Test Series:} A collection of simulated drop tests. A group
#'  number can be attached to the drop tests in a test series (optional).
#' 
#'  \item \strong{Groups:} A collection of multiple simulated test series. Each
#'  batch of test series are identified with a group number. Within each group
#'  test parameters will be identical.
#' 
#'  \item \strong{Trial Deviation:} The average distance from q for the total
#'  percent of reactions (failures).
#' }
#' 
#' @references
#'  Pass/Fail criteria and number of observations required have been defined in
#'  the following standards:
#' \itemize{
#'  \item NASA-STD-6001B
#'  \url{https://spaceflightsystems.grc.nasa.gov/SpaceDOC_II/Standards/documents/NASA-STD-6001B-1.pdf}
#' 
#'  \item ASTM D2512 \url{https://www.astm.org/Standards/D2512.htm}
#' 
#'  \item ASTM G86-17 \url{https://www.astm.org/Standards/G86.htm}
#' }
#' 
#' \strong{Note:} This package is not constrained by any standard. Arbitrary
#' test criteria and observations can be specified for maximum flexibility.
#' 
#' For more information on drop testing: 
#' 
#' \itemize{
#'  \item "An Instrument for Determination of Impact Sensitivity of Materials in 
#'  Contact with Liquid Oxygen" (AB6002-EB). Lucas (1960). 
#'  \url{https://www.astm.org/DIGITAL_LIBRARY/STP/MMR/PAGES/AB6002-EB.htm}
#'
#'  \item "Reproducibility of Liquid Oxygen Impact Test Results"
#'  (NASA-TN-D-7905). Gayle (1970).
#'  \url{https://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/19750014413.pdf}
#'
#'  \item "Lox/Gox Mechanical Impact Tester Assessment" (TM-74106). Bransford,
#'  Bryan, Frye, Stohler (1980).
#'  \url{https://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/19800006920.pdf}
#' }
#' 
#' \strong{Note:} This work is not endorsed by or affiliated with NASA. Released
#' under MIT license.
#' 
#' @author Chad Ross \email{chad.ross@gmail.com}
#' 
#' @seealso 
#'  \code{\link{dtrials}}
#'  \code{\link{dseries}}
#'  \code{\link{dgroups}}
#'  \code{\link{trialdev}}
#'  \code{\link{gayleplot}}
#'  \code{\link{ratioplot}}
#'  \code{\link{D7905}}
#'  \code{\link{PREGENTD}}
#' 
#' @section Package source
#'  \url{https://github.com/chadr/droptest}
#'
#' @docType package
#' 
#' @name droptest
NULL