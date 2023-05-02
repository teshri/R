# Q6. Load the built-in iris dataset and\
#write the R commands/script for the following:

# a. Display the summary statistics for all the variables in the dataset.
# b. Plot a scatter plot for Sepal length and Sepal width for the species
#“setosa”.
# c. Annotate the above graph (a) with appropriate X-axis, Y-axis labels 
#and Main title. d. Plot a histogram for the variable Petal.length.
# e. Create a boxplot for Petal width of Species=versicolor.


library(datasets)


View(iris)
#a

summary(iris)

# b. Plot a scatter plot for Sepal length and Sepal width for the species
#“setosa”.

x<-iris$Sepal.Length[iris$Species=='setosa']
y<-iris$Sepal.Width[iris$Species=='setosa']
x
y
length(x)
length(y)
plot(x,y,main="length vs width", xlab="lenght",
     ylab="Width", col="green", cex=2)


# c. Annotate the above graph (a) with appropriate X-axis, Y-axis labels 
#and Main title. 




#d. Plot a histogram for the variable Petal.length.
val<-iris$Petal.Length
val

hist(val, xlab = "Petals Length", col = "green",
     border = "black",breaks = 7)   



# e. Create a boxplot for Petal width of Species=versicolor.
boxplot(Petal.Length~Species, data = iris,
        xlab = "Petal length",
        ylab = "Species",
        main = "length per species",
        varwidth = TRUE,
        col = c("green", "red", "blue"),
        names = c("High", "Medium", "Low")
)
