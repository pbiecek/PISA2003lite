#
# demo for real dataset
#
library(PISA2003lite)

# Let's calculate weighted averages in MATH, based on PV1MATH for all countries
means <- unclass(by(
  student2003[,c("PV1MATH","W_FSTUWT")],
  student2003[,"CNT"],
  function(x) weighted.mean(x[,1], x[,2])))

# sort them and plot with the dotchart
means <- sort(means)
dotchart(means, pch=19)
