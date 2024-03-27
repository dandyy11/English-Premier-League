# Correlation between Home/Away Goals Scored and Match Outcome
final_dataset$FTR_binary <- ifelse(final_dataset$FTR == "H", 1, 0)
correlation_fthg_ftr <- cor(final_dataset$FTHG, final_dataset$FTR_binary)
correlation_ftag_ftr <- cor(final_dataset$FTAG, final_dataset$FTR_binary)

# Plotting
ggplot(final_dataset, aes(x = FTR, y = FTHG)) +
  geom_boxplot() +
  labs(title = "Home Goals Scored by Match Outcome", x = "Match Outcome", y = "Home Goals Scored")

ggplot(final_dataset, aes(x = FTR, y = FTAG)) +
  geom_boxplot() +
  labs(title = "Away Goals Scored by Match Outcome", x = "Match Outcome", y = "Away Goals Scored")
