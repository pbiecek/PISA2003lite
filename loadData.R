setwd("/Users/pbiecek/camtasia/PISA2003/")

library(devtools)
library(SAScii)
install_github('PISAtools', 'pbiecek')  
library(PISAtools)

# School
school2003 <- extract.data('INT_schi_2003.txt', 'Read_schI_2003.sas')
save(school2003 , file="school2003.rda")

school2003dict <- extract.dict("Read_schI_2003.sas")
school2003dict$colnames <-  extract.vardict("Read_schI_2003.sas")
save(school2003dict , file="school2003dict.rda")

# Scored items
scoredItem2003 <- extract.data("INT_cogn_2003.txt", "Read_cogn_2003.sas")
save(scoredItem2003, file="scoredItem2003.rda")

scoredItem2003dict <- extract.dict("Read_cogn_2003.sas")
scoredItem2003dict$colnames <-  extract.vardict("Read_cogn_2003.sas")
save(scoredItem2003dict , file="scoredItem2003dict.rda")

# student
student2003 <- extract.data("INT_stui_2003_v2.txt", "Read_stuI_2003_v2.sas")
save(student2003, file="student2003.RData")

student2003dict <- extract.dict("Read_stuI_2003_v2.sas")
student2003dict$colnames <-  extract.vardict("Read_stuI_2003_v2.sas")
save(student2003dict , file="student2003dict.rda")

