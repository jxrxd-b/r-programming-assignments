### R Code
A <- matrix(1:100,  nrow = 10)
B <- matrix(1:1000, nrow = 10)

dim(A)  # should be 10 × 10
dim(B)  # 10 × 100 — not square

# For A
invA <- tryCatch(solve(A), error = function(e) conditionMessage(e))
detA <- tryCatch(det(A), error = function(e) conditionMessage(e))

#For B, use tryCatch to capture errors
invB <- tryCatch(solve(B), error = function(e) conditionMessage(e))
detB <- tryCatch(det(B),   error = function(e) conditionMessage(e))

invA

invB
detB
