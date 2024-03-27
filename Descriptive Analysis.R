library(readr)
library(dplyr)
library(ggplot2)

# Load the dataset
final_dataset <- read_csv("E:/Baylor Material/STA 5V85 - Capstone/EPL.csv")

# Basic overview
total_matches <- nrow(final_dataset)
total_goals_scored <- sum(final_dataset$FTHG) + sum(final_dataset$FTAG)
average_home_goals <- mean(final_dataset$FTHG)
average_away_goals <- mean(final_dataset$FTAG)
match_outcome_distribution <- table(final_dataset$FTR) / total_matches * 100

# Print overview
cat("Total Matches:", total_matches, "\n")
cat("Total Goals Scored:", total_goals_scored, "\n")
cat("Average Home Goals:", average_home_goals, "\n")
cat("Average Away Goals:", average_away_goals, "\n")
print(match_outcome_distribution)
