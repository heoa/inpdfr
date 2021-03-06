% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/inpdfr_ANA_cluster.R
\name{doCluster}
\alias{doCluster}
\title{Performs a cluster analysis on the basis of the word-occurrence data.frame.}
\usage{
doCluster(wordF, myMethod = "ward.D2", gp = FALSE, nbGp = 5,
  getPlot = TRUE, mwidth = 800, mheight = 800, formatType = "png", ...)
}
\arguments{
\item{wordF}{The data.frame containing word occurrences.}

\item{myMethod}{The method to compute distances, see \code{\link[stats]{dist}}
function.}

\item{gp}{A logical to specify if groups should be made.}

\item{nbGp}{An intger to specify the number of groups. Ignored if \code{gp=FALSE}.}

\item{getPlot}{If \code{TRUE}, save the cluster plot in the RESULTS directory.}

\item{mwidth}{The width of the plot in pixels.}

\item{mheight}{The height of the plot in pixels.}

\item{formatType}{The format for the output file ("eps", "pdf", "png", "svg", "tiff", "jpeg", "bmp").}

\item{...}{Additional arguments from the \code{\link[stats]{hclust}} function.}
}
\value{
An object of class \code{\link[stats]{hclust}}.
}
\description{
Performs a cluster analysis on the basis of the word-occurrence data.frame
  using \code{\link[stats]{hclust}} function.
}
\examples{
data("loremIpsum")
loremIpsum01 <- loremIpsum[1:100]
loremIpsum02 <- loremIpsum[101:200]
loremIpsum03 <- loremIpsum[201:300]
loremIpsum04 <- loremIpsum[301:400]
loremIpsum05 <- loremIpsum[401:500]
subDir <- "RESULTS"
dir.create(file.path(getwd(), subDir), showWarnings = FALSE)
write(x = loremIpsum01, file = "RESULTS/loremIpsum01.txt")
write(x = loremIpsum02, file = "RESULTS/loremIpsum02.txt")
write(x = loremIpsum03, file = "RESULTS/loremIpsum03.txt")
write(x = loremIpsum04, file = "RESULTS/loremIpsum04.txt")
write(x = loremIpsum05, file = "RESULTS/loremIpsum05.txt")
wordOccuDF <- getwordOccuDF(mywd = paste0(getwd(), "/RESULTS"), excludeSW = FALSE)
file.remove(list.files(pattern = "loremIpsum"))
doCluster(wordF = wordOccuDF, myMethod = "ward.D2")
}

