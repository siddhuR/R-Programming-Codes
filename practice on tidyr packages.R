library(tidyr)

df2 <- data.frame(player=c('A', 'A', 'B', 'B', 'C', 'C'),
                  year=c(1, 2, 1, 2, 1, 2),
                  stats=c('22/2/3', '29/3/4', '18/6/7', '11/1/2', '12/1/1', '19/2/4'))

df2 <- separate(df2, stats, into = c("points", "assists", "rebounds"), sep = "/")

print(df2)

