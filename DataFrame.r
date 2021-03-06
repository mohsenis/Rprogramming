x <- 10:1
y <- -4:5
q <- c("Hockey", "Football", "Soccer", "Rugby", "sport",
       "sport", "sport", "sport", "sport", "sport")

theDF <- data.frame(x,y,q)
theDF

theDF <- data.frame(First=x, Second=y, Sport=q)
theDF

class(theDF$Sport) #char is automatically changed to factor. It might be problematic

theDF <- data.frame(First=x, Second=y, Sport=q, stringsAsFactors = FALSE)
theDF

nrow(theDF)
ncol(theDF)
dim(theDF)

NROW(theDF)
nrow(x) #x is a vector and nrow does not work on it. length has to be used. NROW can also be used
length(x)
NROW(x)

names(theDF)
names(theDF)[3]

rownames(theDF)
rownames(theDF) <- c("one","two","three","four","five",
                     "six","seven","eight","nine","ten")
rownames(theDF)
theDF
rownames(theDF) <- NULL #back to default

head(theDF)
head(theDF, 7) #or head(theDF, n=7)
tail(theDF)
class(theDF)

theDF$Sport
theDF[3,2]
theDF[3,2:3]
theDF[c(3,5), 2:3]
theDF[c(3,5), c(2,3)]
theDF[,3]
theDF[,2:3]

class(theDF[,3])
theDF[, 3, drop = FALSE]   # dont change it to vector
class(theDF[,3, drop = FALSE])

theDF[2,]
class(theDF[2,])

theDF[, c("First", "Sport")] #another way of selecting data
theDF[, c("Sport", "First")]
theDF[,"Sport", drop = FALSE]

theDF["Sport"] #another way
theDF[["Sport"]]
theDF[c("Sport", "First")]
