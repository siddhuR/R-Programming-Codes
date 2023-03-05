# 1q.) count how many even numbers are there in vector  in 2,5,3,9,8,11,6

# Answer :

n <- c(2,5,3,9,8,11,6)

count <- 0
for (i in n) {
  if (i%%2 == 0)
    count = count +1
}
print(count)
