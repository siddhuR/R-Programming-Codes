# Packages

# To check the path for the libraries we have
.libPaths()

# To see all the libraries present in our system
library()

# To see all the currently loaded packages
search()

# To install any new package
install.packages("XML")

# To load the library which we installed
library(XML)

#==========================================================

# DATA RESHAPING

install.packages("reshape2")

city <- c("Tampa","Seattle","Hartford","Denver")
state <- c("FL","WA","CT","CO")
zipcode <- c(33602,98104,06161,80294)

# Combine above three vectors into one data frame.
addresses <- cbind(city,state,zipcode)

# Print a header. cat("# # # # The First data frame\n")
# Print the data frame.
print(addresses)
new.address <- data.frame( city = c("Lowry","Charlotte"), state = c("CO","FL"), zipcode = c("80230","33949"), stringsAsFactors = FALSE )
# Print a header.
cat("# # # The Second data frame\n")
# Print the data frame.
print(new.address)
# Combine rows form both the data frames.
all.addresses <- rbind(addresses,new.address)

# Print a header.
cat("# # # The combined data frame\n")
# Print the result.
print(all.addresses)

#============================================================

# Merging the data frames

library(MASS)

merged.Pima <- merge(x = Pima.te, y = Pima.tr, by.x = c("bp", "bmi"), by.y = c ("bp", "bmi") )

print(merged.Pima)
nrow(merged.Pima)


# Melting and casting

print(ships)

#Melt the data

library(reshape2)

#Now we melt the data to organize it, converting all columns other than type and year into multiple rows.
molten.ships <- melt(ships, id = c("type","year"))
print(molten.ships)

#Cast and Molten data

# install.packages("CAST")
# library(CAST)
# remove.packages("CAST")

#install.packages("CAST")

#library(CAST)
recasted.ship <- cast(molten.ships, type+year~variable,sum)
print(recasted.ship)



