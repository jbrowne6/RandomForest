#!/bin/bash
rm ~/RandomForest/src/*.*o
rm ./randomForest_4.6*
rm -r ~/R/*/*/randomForest
R CMD build ~/RandomForest/
