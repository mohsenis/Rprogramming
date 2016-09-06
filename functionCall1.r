x <- 1:10
mean(x)
sum(x)
nchar(x)


mean(x=x, trim = 0.1)
mean(x, 0.1)  #R kind of guess which argument we are refering too 
mean(x, na.rm=TRUE)
x[c(2,6)] <- NA
x
mean(x)
mean(x, na.rm = TRUE)
