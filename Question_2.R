# Q2. Use the airquality dataset and write R commands to do the

# following:
#a. Display the structure of the dataset.
# b. Display the number of observations and variables in this dataset.
# c. Display the count of complete rows.
# d. Display the data for the observation having Temp between 70 and 80.
# e. Display the count of observations where Month = 5.
# f. Display first 10 rows of the dataset.
# g. Display summary of Wind variable.
# h. Display the complete dataset sorted as per the decreasing order of
# Temp variable.
#i. Add a new observation to this dataset.

print(airquality)
nrow(airquality)

str(airquality)


# c. Display the count of complete rows.
x <- nrow(airquality[complete.cases(airquality),])
cat("complete cases --> ", x)

#dDisplay the data for the observation having Temp between 70 and 80.

airquality[airquality$Temp>'70' & airquality$Temp<'80',]

# e. Display the count of observations where Month = 5.
airquality[airquality$Month=='5',]

# f. Display first 10 rows of the dataset.

head(airquality,10)


# g. Display summary of Wind variable.
summary(airquality$Wind)

# h. Display the complete dataset sorted as per the decreasing order of
# Temp variable.
airquality[order(airquality$Temp,decreasing = TRUE),]

#i. Add a new observation to this dataset.
airquality$newObj=c(seq(14,500,length.out=153))
airquality




