A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

A+B
A-B

D <- diag(c(4,1,2,3))
D

custom_m <- cbind(c(3, rep(2,4)), rbind(rep(1,4), diag(3,nrow = 4)))
custom_m