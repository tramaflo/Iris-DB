library(readr)

IrisDataset<- read.csv("C:/Users/T450S/Desktop/Floriana/Ubiqum/Data Analytics II/Task 1/Cars/iris.csv")

attributes(IrisDataset)

summary(IrisDataset)

str(IrisDataset)

names(IrisDataset)

IrisDataset$Species<- as.numeric(IrisDataset$Species)

hist(IrisDataset$Species)

plot(IrisDataset$Sepal.Length)

qqnorm(IrisDataset$Species)

qqnorm(IrisDataset$Sepal.Length)

qqnorm(IrisDataset$Sepal.Width)

qqnorm(IrisDataset$Petal.Length)

qqnorm(IrisDataset$Petal.Width)

set.seed(123)

trainSize <- round(nrow(IrisDataset) * 0.7)

testSize <- nrow(IrisDataset) - trainSize

trainSize

testSize

training_indices<-sample(seq_len(nrow(IrisDataset)),size =trainSize)

trainSet <- IrisDataset[training_indices, ]

testSet <- IrisDataset[-training_indices, ]

IrisModel<- lm(Petal.Length ~ Petal.Width, trainSet)

summary(IrisModel)

Irisprediction<-predict(IrisModel,testSet)

testSet$Prediction <- Irisprediction





