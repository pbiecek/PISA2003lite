\name{item2003}
\alias{item2003}
\alias{item2003dict}
\alias{scoredItem2003}
\alias{scoredItem2003dict}
\docType{data}
\title{Data from cognitive items PISA 2003}
\description{
  The codebook for cognitive items PISA 2003 is avaliable here \code{http://pisa2003.acer.edu.au/downloads/Cogn_CodeBook_2003.pdf}.

  The \code{item2003} dataset is imported from this file \code{http://pisa2003.acer.edu.au/downloads/INT_cogn_2003.zip}.

  The variable names are avaliable in named vectors \code{item2003dict} and  \code{scoredItem2003dict}.
}
\usage{data(item2003)}
\references{
  http://pisa2003.acer.edu.au/downloads.php
}
\author{
 Dataset created by ACER, transformed by Przemyslaw Biecek
}
\seealso{\code{\link{school2003}}, \code{\link{item2003}}}
\examples{
library(PISA2003lite)

# first few rows
student2003[1:5,1:10]
head(student2003dict)

# averages in MATH, based on PV1MATH
means <- unclass(by(
    student2003[,c("PV1MATH","W_FSTUWT")], 
    student2003[,"CNT"], 
    function(x) weighted.mean(x[,1], x[,2])))
means <- sort(means)
dotchart(means, pch=19)

}
\keyword{datasets}
