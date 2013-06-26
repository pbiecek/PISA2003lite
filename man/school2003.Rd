\name{school2003}
\alias{school2003}
\alias{school2003dict}
\docType{data}
\title{Data from school questionnaire PISA 2003}
\description{
  The english version of school questionnaire PISA 2003 is avaliable here \code{http://pisa2003.acer.edu.au/downloads/ScQ_Questionnaire2003.pdf}.

  There is 10274 rows/schools and 192 columns/variables.

  The \code{school2003} dataset is imported from this file \code{http://pisa2003.acer.edu.au/downloads/INT_schi_2003.zip}.

  The codebook for this dataset is avaliable here \code{http://pisa2003.acer.edu.au/downloads/ScQ_CodeBook_2003.pdf}.
  
  The variable names are avaliable in the named vector \code{school2003dict$colnames}.
  
  The dictionaries for \code{school2003} data set are avaliable as list of named vectors \code{school2003dict}.
}
\usage{data(school2003)}
\references{
  http://pisa2003.acer.edu.au/downloads.php
}
\author{
 Dataset created by OECD, transformed by Przemyslaw Biecek
}
\seealso{\code{\link{student2003}}, \code{\link{scoredItem2003}}}
\examples{
library(PISA2003lite)

# first few rows
school2003[1:5,1:5]
head(school2003dict$colnames)

# merge of school and student data
means <- unclass(by(
    student2003[,c("PV1MATH","W_FSTUWT")], 
    list(student2003[,"CNT"],student2003[,"SCHOOLID"]), 
    function(x) weighted.mean(x[,1], x[,2])))

country.school.means <- na.omit(as.data.frame(as.table(means)))
boxplot(Freq~Var1, data=country.school.means, 
    horizontal=T, las=1, at=rank(tapply(country.school.means$Freq, country.school.means$Var1, mean)), pch='.')

}
\keyword{datasets}
