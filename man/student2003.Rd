\name{student2003}
\alias{student2003}
\alias{student2003dict}
\docType{data}
\title{Data from student questionnaire PISA 2003}
\description{
  The english version of student questionnaire PISA 2003 is avaliable here \code{http://pisa2003.acer.edu.au/downloads/StQ_Questionnaire2003.pdf}.

  There is 276165 rows/pupils and 407 columns/variables.

  The \code{student2003} dataset is imported from this file \code{http://pisa2003.acer.edu.au/downloads/INT_stui_2003_v2.zip}.

  The codebook for this dataset is avaliable here \code{http://pisa2003.acer.edu.au/downloads/StQ_CodeBook_2003.pdf}.
  
  The variable names are avaliable in the named vector \code{student2003dict$colnames}.
  
  The dictionaries for \code{student2003} data set are avaliable as list of named vectors \code{student2003dict}.
}
\usage{data(student2003)}
\references{
  http://pisa2003.acer.edu.au/downloads.php
}
\author{
 Dataset created by OECD, transformed by Przemyslaw Biecek
}
\seealso{\code{\link{school2003}}, \code{\link{scoredItem2003}}}
\examples{
library(PISA2003lite)

# first few rows
student2003[1:5,1:10]
head(student2003dict$colnames)

# averages in MATH, based on PV1MATH
means <- unclass(by(
    student2003[,c("PV1MATH","W_FSTUWT")], 
    student2003[,"CNT"], 
    function(x) weighted.mean(x[,1], x[,2])))
means <- sort(means)
dotchart(means, pch=19)

}
\keyword{datasets}
