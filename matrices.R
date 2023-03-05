# creating a matrix

# row wise inserting data
M <- matrix(c(3:14), nrow = 4, byrow = TRUE)
print(M)

# column wise inserting data
M1 <- matrix(c(3:14), nrow = 4, byrow = FALSE)
print(M1)

# giving names to rows and columns of a matrix
rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")
P <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames, colnames))
print(P)

# Access the element at 3rd column and 1st row.
print(P[1,3])
# Access the element at 2nd column and 4th row.
print(P[4,2])
# Access only the 2nd row.
print(P[2,])
# Access only the 3rd column.
print(P[,3])

# Create two 2x3 matrices
matrix1 <- matrix(c(3, 9, -1, 4, 2, 6), nrow = 2)
print(matrix1)
matrix2 <- matrix(c(5, 2, 0, 9, 3, 4), nrow = 2)
print(matrix2)

#adding two matrices
result <- matrix1 + matrix2
print(result)

#subtracting two matrices
result1 <- matrix1 - matrix2
print(result1)

#multiplying twwo matrices
result2 <- matrix1 * matrix2
print(result2)


result3 <- matrix1 / matrix2
print(result3)

# Assigning the value in matrix
matrix1[2,2] <- 12
print(matrix1)

# Assigning the value in IF condition in a matrix
matrix1[matrix1 == 12] <- 0
print(matrix1)

# Assigning the value if > condition in the matrix
matrix1[matrix1 > 5] <- 1
print(matrix1)
























