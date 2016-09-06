#every variable in R is a vector
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)   #vector
x
class(x)

x*3
x+2
sqrt(x)

1:10
10:1
-2:3
5:-5

x<- 1:10
y<- -4:5
x+y

length(x)
length(x+y)
x + c(1, 2)   #iterates
x + c(1, 2, 3)


x <- 10:1
y <- -4:5
x < y
any(x < y) #at least on true
all(x < y) #all true

q <- c("Hocky", "Football", "Tennis", "Basketball", "Soccer")
nchar(q)

x[1]   #first element in R is 1
x[1:2]
x[c(1,4)] #first and fourth element

c(One="a", Two="y", Last="r")

w<- 1:3
names(w) <- c("a","b","c")
w

q2 <- c(q, "Soccer", "Basketball", "Soccer")
q2Factor <- factor(q2)
q2Factor
as.numeric(q2Factor) #index them in alphabetical order


z <- c(1, 2, NA, 8, 3, NA, 3) #NA is missing data
z
is.na(z)

zChar <- c("Soccer", NA ,"Football")
zChar

z <- c(1, NULL, 3) #Null is different than NA. NULL is the absence of everything
z

d <- NULL
d
is.null(d)
