# tidyr package

install.packages('tidyverse')
library(tidyr)

n = 10
# creating a data frame
tidy_dataframe = data.frame(
  S.No = c(1:n),
  Group.1 = c(23, 345, 76, 212, 88,
              199, 72, 35, 90, 265),
  Group.2 = c(117, 89, 66, 334, 90,
              101, 178, 233, 45, 200),
  Group.3 = c(29, 101, 239, 289, 176,
              320, 89, 109, 199, 56))

print(tidy_dataframe)

# using gather() function on tidy_dataframe
long <- tidy_dataframe %>%
  gather(Group, Frequency,
         Group.1:Group.3)

# print the data frame in a long format
long


# import tidyr package
library(tidyr)
long <- tidy_dataframe %>%
  gather(Group, Frequency,
         Group.1:Group.3)

# use separate() function to make data wider
separate_data <- long %>%
  separate(Group, c("Allotment",
                    "Number"))

# print the wider format
separate_data


# import tidyr package
library(tidyr)

long <- tidy_dataframe %>%
  gather(Group, Frequency,
         Group.1:Group.3)

# use separate() function to make data wider
separate_data <- long %>%
  separate(Group, c("Allotment",
                    "Number"))

# use unite() function to glue
# Allotment and Number columns
unite_data <- separate_data %>%
  unite(Group, Allotment,
        Number, sep = ".")

# print the new data frame
unite_data


# import tidyr package
library(tidyr)

long <- tidy_dataframe %>%
  gather(Group, Frequency,
         Group.1:Group.3)

# use separate() function to make data wider
separate_data <- long %>%
  separate(Group, c("Allotment",
                    "Number"))

# use unite() function to glue
# Allotment and Number columns
unite_data <- separate_data %>%
  unite(Group, Allotment,
        Number, sep = ".")

# use unite() function to make data wider
back_to_wide <- unite_data %>%
  spread(Group, Frequency)

# print the new data frame
back_to_wide
