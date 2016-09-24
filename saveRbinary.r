library(readxl)


tomatoXL <- read_excel("ExcelExample.xlsx", sheet = 1)
head(tomatoXL)

save(tomatoXL, file="data/tomatoXL.rdata")
rm(tomatoXL)

tomatoXL
load("data/tomatoXL.rdata")
tomatoXL


n <- 20
r <- 1:10
w <- data.frame(n,r)
w

save(n, r, w, file="data/multiple.rdata")
rm(n, r, w)

load("data/multiple.rdata")  #you can use tab completion for address!!!!!!!!!
