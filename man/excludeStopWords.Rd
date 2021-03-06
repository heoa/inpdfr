% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/inpdfr_PRO_stopwords.R
\name{excludeStopWords}
\alias{excludeStopWords}
\title{Exclude StopWords form the word-occurrence data.frame.}
\usage{
excludeStopWords(wordF, lang = "English")
}
\arguments{
\item{wordF}{The data.frame containing word occurrences.}

\item{lang}{The language used ("French", "English", "Spanish").}
}
\value{
The word-occurrence data.frame.
}
\description{
Exclude StopWords form the word occurrences data.frame. \code{excludeStopWords}
  uses \code{parallel} to perform parallel computation.
}
\examples{
\dontrun{
excludeStopWords(wordF = myDF, lang = "French")
}
}

