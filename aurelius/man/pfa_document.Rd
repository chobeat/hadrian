% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pfa_document.R
\name{pfa_document}
\alias{pfa_document}
\title{pfa_document}
\source{
pfa_engine.R
}
\usage{
pfa_document(input, output, action, cells = NULL, pools = NULL,
  fcns = NULL, validate = FALSE, name = NULL, method = NULL,
  begin = NULL, end = NULL, zero = NULL, merge = NULL,
  randseed = NULL, doc = NULL, version = NULL, metadata = NULL,
  options = NULL, env = parent.frame())
}
\arguments{
\item{input}{input schema, which is an Avro schema as list-of-lists (created by avro_* functions)}

\item{output}{output schema, which is an Avro schema as list-of-lists (created by avro_* functions)}

\item{action}{R commands wrapped as an expression (see R's built-in expression function)}

\item{cells}{named list of cell specifications (see the pfa_cell function)}

\item{pools}{named list of pool specifications (see the pfa_cell function)}

\item{fcns}{named list of R commands, wrapped as expressions}

\item{validate}{a logical indicating whether the generated PFA document should 
be validated using Titus-in-Aurelius function \code{\link{pfa_engine}}}

\item{name}{optional name for the scoring engine (string)}

\item{method}{"map", "emit", "fold", or NULL (for "map")}

\item{begin}{R commands wrapped as an expression}

\item{end}{R commands wrapped as an expression}

\item{zero}{list-of-lists representing the initial value for a "fold"'s tally}

\item{merge}{R commands wrapped as an expression}

\item{randseed}{optional random number seed (integer) for ensuring that the scoring engine is deterministic}

\item{doc}{optional model documentation string}

\item{version}{optional model version number (integer)}

\item{metadata}{optional named list of strings to store model metadata}

\item{options}{optional list-of-lists to specify PFA options}

\item{env}{environment for resolving unrecognized symbols as substitutions}
}
\value{
a \code{list} of lists representing a complete PFA document
}
\description{
Create a complete PFA document as a list-of-lists. Composing with the JSON 
function creates a PFA file on disk.
}
\examples{
pfa_document(avro_double, avro_double, expression(input + 10))
}
\seealso{
\code{\link{pfa_engine}}
}
