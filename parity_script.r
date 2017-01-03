parityX<- read.csv("~/RandomForest/Parity/Parity_Xtrain.dat", header=FALSE)
parityY<- read.csv("~/RandomForest/Parity/Parity_Ytrain.dat", header=FALSE)
parityY<- factor(data.matrix(parityY))
testX<- read.csv("~/RandomForest/Parity/Parity_Xtest.dat", header=FALSE)
testY<- read.csv("~/RandomForest/Parity/Parity_Ytest.dat", header=FALSE)
testYR <- as.numeric(unlist(testY))+1
testY<- factor(data.matrix(testY))

library(randomForest)
cat("set.seed(71)")

parity.rf <- randomForest(parityX, parityY, ntree=1000, sampsize=c(55,45), RerF=6)
parity.rf <- randomForest(parityX, parityY, ntree=1000, RerF=6)
x <- parity.rf$err.rate[,1]
