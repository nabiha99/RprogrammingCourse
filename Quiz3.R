#what is the mean of 'Sepal.Length' for the species virginica
meanSL <- function(x) {
  virginica <- x[which(x$Species== "virginica"), "Sepal.Length"]
  mean(virginica)
}

#Continuing with the 'iris' dataset from the previous Question, what R code returns a vector of the means of the variables 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?
apply(iris[, 1:4], 2, mean) 

#Load the 'mtcars' dataset in R with the following code
#library(datasets)
#data(mtcars)
#There will be an object names 'mtcars' in your workspace. You can find some information about the dataset by running
#?mtcars
#How can one calculate the average miles per gallon (mpg) by number of cylinders in the car (cyl)?
sapply(split(mtcars$mpg, mtcars$cyl), mean)

#Continuing with the 'mtcars' dataset, what is the absolute difference between the average horsepower of 4-cylinder cars and the average horsepower of 8-cylinder cars?
avghp <- function(x) {
  sapply(split(mtcars$mpg, mtcars$cyl), mean)
  hp8 <- mean(x[which(x$cyl==8),"hp"]) 
  hp4 <- mean(x[which(x$cyl==4),"hp"]) 
  hp4-hp8
}