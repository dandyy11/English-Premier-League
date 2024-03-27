library(caret)
library(randomForest)

# Prepare the data
features <- c("HTGS", "ATGS", "HTGC", "ATGC", "HTGD", "ATGD", "DiffPts", "DiffFormPts")
target <- "FTR_binary"

# Create training and testing sets
set.seed(123)
training_samples <- createDataPartition(final_dataset[[target]], p = 0.8, list = FALSE)
train_data <- final_dataset[training_samples, features]
test_data <- final_dataset[-training_samples, features]
train_target <- final_dataset[training_samples, target]
test_target <- final_dataset[-training_samples, target]

# Train the Random Forest model
model <- randomForest(train_data, train_target)

# Predict on the test set
predictions <- predict(model, test_data)

# Calculate accuracy
accuracy <- sum(predictions == test_target) / length(test_target)
print(paste("Accuracy:", accuracy))
