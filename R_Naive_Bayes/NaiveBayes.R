# Naive Bayes Algorithm
# A classification technique based on Bayes' Theorem. Works best on two level features.
# Features with more than two levels will result in less accuracy.
# It can handle large data sets better than KNN.
# Bayes theorem provides a way of calculating posterior probability P(c|x) from P(c), P(x) and P(x|c)
# Naive Bayes algorithms are mostly used in sentiment analysis, spam filtering, recommendation systems etc.


######Implementation#######
# Libraries
# Using "naivebayes" package - can be installed from cran. package "e1071" also contains it
library(scales)
library(naivebayes)
library(ggplot2)

# Data 
data <- read.csv(file.choose(), header = TRUE)# For Simplicity lets pick binary data form data folder
head(data)
str(data)

# Correcting features with levels from "int" to "factor"
data$rank <- as.factor(data$rank)
data$admit <- as.factor(data$admit)

# Data Partition
# Set a Random Seed
set.seed(1234)
ind <- sample(2, nrow(data), replace = TRUE, prob = c(0.8, 0.2))
train <- data[ind == 1,]
test <- data[ind == 2,]
head(train)
head(test)

# Model selecting "admit"
levels(data$admit)
model <- naive_bayes(admit ~ ., data = train)
class(model)

# Prediction
pred <- predict(model, test)
 
# Confusion Matrix
cm <- table(test$admit, pred)
cm
accuracy <- percent(sum(diag(cm)) / sum(cm))

# Creating a heat map of confusion matrix
cmDF <- as.data.frame(cm)
ggplot(data = cmDF, mapping = aes(x = pred, y = Var1)) + geom_tile(aes(fill = Freq), colour = "white") + 
  geom_text(aes(label = sprintf("%1.0f", Freq)), vjust = 1)



