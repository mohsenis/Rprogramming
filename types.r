#R is dynamically typed.. Duh..

x <- 2
class(x)
is.numeric(x)

i <- 5L  #L means its integer
class(i)
is.integer(i)
is.numeric(i)

class(4L*1.2)
class(5L/2L)


y <- "data"
class(y)

z <- factor("data")
z

nchar(y)
nchar(454)
nchar(z)  #does not work on factors


date1 <- as.Date("2012-06-28")
date1
class(date1)
as.numeric(date1)   #number of days from unix epoch

date2 <- as.POSIXct("2012-06-28 17:42")
date2
class(date2)
as.numeric(date2)   #number of seconds from unix epoch


k <- TRUE
class(k)
5*k
k <- FALSE
5*k
T  #do not use this type of shortcuts
T <- 5
T

2==4
2!=4
"data" == "stats"
"data" < "stats"
