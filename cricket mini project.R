# load libraries
library(dplyr)
library(ggplot2)

# load data
data <- read.csv("cricket.csv")
View(data)

# runs comparison
barplot(data$Runs,
        names.arg=data$PlayerName,
        main="Runs Comparison",
        xlab="Players",
        ylab="Runs")

# strike rate histogram
hist(data$StrikeRate,
     main="Strike Rate Distribution",
     xlab="Strike Rate")

# matches vs runs
plot(data$Matches, data$Runs,
     main="Matches vs Runs",
     xlab="Matches",
     ylab="Runs")

# ggplot bar graph
ggplot(data, aes(x=PlayerName, y=Runs)) +
  geom_bar(stat="identity") +
  ggtitle("Runs by Player")

# balls vs runs
ggplot(data, aes(x=Balls, y=Runs)) +
  geom_point() +
  ggtitle("Balls vs Runs")

# mean runs
mean_runs <- mean(data$Runs)
print(mean_runs)

# correlation
correlation <- cor(data$Matches, data$Runs)
print(correlation)

# top player
top_player <- data$PlayerName[which.max(data$Runs)]
print(top_player)

# average strike rate
avg_sr <- mean(data$StrikeRate)
print(avg_sr)

# sort players by runs
sorted_data <- data[order(-data$Runs), ]
print(sorted_data)
