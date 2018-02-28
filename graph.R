#Histogram
hist(table_final$Positive, col=rainbow(10))
hist(table_final$Negative, col=rainbow(10))
hist(table_final$Score, col=rainbow(10))

#Pie
slices <- c(sum(table_final$Positive), sum(table_final$Negative))
labels <- c("Positive", "Negative")
library(plotrix)
#pie(slices, labels = labels, col=rainbow(length(labels)), main="Sentiment Analysis")
pie3D(slices, labels = labels, col=rainbow(length(labels)),explode=0.00, main="Sentiment Analysis")

slices <- c(sum(table_final$Positive), sum(table_final$Negative))
piepercent<- round(100*slices/sum(slices), 1)

pie(slices, labels = piepercent, main = "Sentiment Analysis",col = rainbow(length(slices)))
legend("topleft", c("Positive","Negative"), cex = 0.8,
       fill = rainbow(length(slices)))
colors <- c("blue", "red")

# Plot the bar chart.
barplot(slices,names.arg = labels,xlab = "Sentiment",ylab = "Score",col = colors,
        main = "Sentiment Analysis",border = "red")