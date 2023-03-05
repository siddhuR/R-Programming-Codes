# 1. Lists

list_data <- list("Red", "Green", c(21,32,11), TRUE, 51.23, 119.1)
print(list_data)

# 2. create the list with vectors, matrix, sub list and name them individually. then show the list.

list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2), list("green",12.3))

names(list_data) <- c("1st Quarter", "A_Matrix", "A Inner list")

# Show the list.

print(list_data)

# 3. Access the elements of the list using indexing   // indexing starts from 1 in R language

print(list_data[1])
print(list_data[2])
print(list_data[3])

# 4. Access the elements of the list using names

print(list_data$A_Matrix)

# 5. To add up and remove the extra data in the element.

list_data[4] <- "New Element"
print(list_data)

list_data[4] <- NULL
print(list_data)

# 6. merging two lists

list1 <- list(1,2,3)
list2 <- list("Sun","Mon","Tue")
merged.list <- c(list1,list2)
print(merged.list)

# 7. Adding elements in index 2

list_data[2] <- "siddhu"
print(list_data)

# 8. Create , convert , and add

# Create lists.
list1 <- list(1:5)
print(list1)
list2 <-list(10:14)
print(list2)

# Convert the lists to vectors.
v1 <- unlist(list1)
v2 <- unlist(list2)
print(v1)
print(v2)

# Now add the vectors
result <- v1+v2
print(result)