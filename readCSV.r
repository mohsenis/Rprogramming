location <- "http://www.jaredlander.com/data/Tomato%20First.csv"
tomato <- read.table(file=location, header = TRUE, sep = ",")
tomato

class(tomato$Tomato)   #it will be computationally more expensive if strings are considered as factors
tomato <- read.table(file=location, header = TRUE, sep = ",", stringsAsFactors = FALSE)
class(tomato$Tomato)

sep="\t" #if it was tab separator
sep=";"  #if it was semicolon separator

