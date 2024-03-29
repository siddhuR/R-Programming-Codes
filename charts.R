# Create data for the graph
x <- c(21, 62, 10, 53)
labels <-c("London","New York","Singapore","Mumbai")
# Give the chart file a name
png(file="city.png")
# Plot the chart
pie(x,labels)
# Save the file
dev.off(2)


# Create data for the graph
x <- c(21, 62, 10, 53)
labels <-c("London","New York","Singapore","Mumbai")
# Give the chart file a name
png(file="city_the_colours.jpg")
# Plot the chart with title and rainbow color pallet
pie(x,labels, main="City pie chart", col = rainbow(length(x)))
# Save the file
dev.off(2)


# Create data for the graph
x <- c(21, 62, 10, 53)
labels <-c("London","New York","Singapore","Mumbai")
piepercent<-round(100%(sum(x,)))