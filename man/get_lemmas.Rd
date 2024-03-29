% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sehr.R
\name{get_lemmas}
\alias{get_lemmas}
\title{Search For Lemmas in WordNet}
\usage{
get_lemmas(
  x = c("very", "nice"),
  pos = c("n", "v", "a", "s", "r"),
  sensenum,
  lemmatize = TRUE
)
}
\arguments{
\item{x}{character, one or more lemmas to be searched; it can also be a data.frame result from another \code{get_} functions, but it doesn't make a lot of sense. Alternatively, you can also use the so-called dot notation ("lemma.pos.sensenum") to quickly search for an exact word sense. For example, "king.n.10" is the lemma of "king", which is a noun with the 10th word sense, i.e. king, the chess piece. When using this dot notation, the \code{lemmatize} parameter is set to \code{FALSE}.}

\item{pos}{character, a vector of part-of-speech labels: "n": Noun, "v": Verb, "a": Adjective, "s": Adjective satellite, "r": Adverb}

\item{sensenum}{integer, if supplied, only those sensenum are selected.}

\item{lemmatize}{logical, whether to lemmatize the \code{x} before making query. This is ignored if 1) \code{pos} has more than one element, 2) \code{x} contains collocations or hyphenation.}
}
\value{
a data frame containing search result
}
\description{
Search for lemma(s) in WordNet.
}
\examples{
\donttest{
if (interactive()) {
get_lemmas("king.n.10")
}
}
}
