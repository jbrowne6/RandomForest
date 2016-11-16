#!/bin/bash
rm ~/gitRepos/old.RandomForest/src/*.*o
rm ./randomForest_4.6*
rm -r ~/R/*/*/randomForest
R CMD build ~/gitRepos/old.RandomForest/
