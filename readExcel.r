download.file("http://www.jaredlander.com/data/ExcelExample.xlsx", destfile = "ExcelExample.xlsx", mode = "wb")

install.packages("readxl")
library(readxl)

tomatoXL <- read_excel("ExcelExample.xlsx", sheet = 1)
head(tomatoXL)

wineXL <- read_excel("ExcelExample.xlsx", sheet = 'Wine')
head(wineXL)

install.packages("openxlsx")
library(openxlsx)

tomatoXL1 <- read.xlsx('ExcelExample') #might not handle missing strings. but can be used to write to excel file