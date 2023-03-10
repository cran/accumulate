% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.R
\name{min_complete}
\alias{min_complete}
\title{Demand minimal number of complete records}
\usage{
min_complete(n, vars = TRUE)
}
\arguments{
\item{n}{Minimal number of records that must be complete}

\item{vars}{\code{[TRUE|column index]} Column index into the data to
be tested (e.g. a character vectod with variable names or
a numeric vector with column positions). The indexed columns
will be testsed for completeness (absence of \code{NA}). Be default
\code{vars=TRUE} meaning that all columns are taken into account.}
}
\value{
a function that accepts a data frame and returns \code{TRUE}
        when the number of complete records is larger than or equal to \code{n}
        and otherwise \code{FALSE}.
}
\description{
Demand minimal number of complete records
}
\examples{

f <- min_complete(20)
f(women)  # FALSE (15 records)
f(mtcars) # TRUE (32 records)

}
\seealso{
Other helpers: 
\code{\link{frac_complete}()},
\code{\link{min_records}()}
}
\concept{helpers}
