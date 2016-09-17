A <- matrix(1:10, nrow = 5)
A

B <- matrix(21:30, nrow = 5)
B

C <- matrix(21:40, nrow = 2)
C

nrow(A)
ncol(A)
dim(A)

A + B
A * B

A == B

t(B)

A %*% t(B) #dot product
A %*% C

colnames(A)
rownames(A)

colnames(A) <- c("left", "right")
rownames(A) <- c("1st", "2nd", "3rd", "4th", "5th")
A

LETTERS
letters

colnames(C) <- LETTERS[1:10]
rownames(C) <- c("top", "bottom")
C

t(C)

A %*% C
