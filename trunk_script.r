parityX<- read.csv("~/RandomForest/Trunk/Trunk_Xtrain.dat", header=FALSE)
parityY<- read.csv("~/RandomForest/Trunk/Trunk_Ytrain.dat", header=FALSE)
parityY<- factor(data.matrix(parityY))
testX<- read.csv("~/RandomForest/Trunk/Trunk_Xtest.dat", header=FALSE)
testY<- read.csv("~/RandomForest/Trunk/Trunk_Ytest.dat", header=FALSE)
testYR <- as.numeric(unlist(testY))+1
testY<- factor(data.matrix(testY))

library(randomForest)
cat("set.seed(71)")

parity.rf <- randomForest(parityX, parityY, ntree=1000, sampsize=c(497, 503), RerF=6)
x <- parity.rf$err.rate[,1]
