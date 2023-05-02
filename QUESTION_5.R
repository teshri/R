# Using the rainfall data for the year 2015 available on the link
#https://data.world/rajanand/rainfall-in-india or
# https://www.kaggle.com/datasets/rajanand/rainfall-in-india
# Write an R script to:
#   a. Read the first ten days of rainfall amounts from the CSV file.
# b. Create a subset of the rainfall data where rain is larger than 20.
# c. Find the mean rainfall for days where the rainfall was at least 4.
# d. Subset the vector where rainfall is either exactly zero, or exactly 0.6.
# e. Use a suitable plot to compare the rainfall of each day of every month,
#and to compare the summarized rainfall of every month.


library(readr)
rainfall_in_india_1901_2015 <- read_csv("~/Documents/R prog./rainfall in india 1901-2015.csv")
View(rainfall_in_india_1901_2015)

# a
rain_India_2015<-(rainfall_in_india_1901_2015[rainfall_in_india_1901_2015$YEAR=='2015',])

str(rain_India_2015)
View(rain_India_2015)

View(head(rain_India_2015,10))

#b
# Syntax: subset(x, subset, select)
# b. Create a subset of the rainfall data where rain is larger than 20.
View(rain_India_2015[(rain_India_2015$JAN >20) & (rain_India_2015$FEB >20 )
                     &(rain_India_2015$MAR >20 ) & (rain_India_2015$APR >20 ),])

name<- names(rain_India_2015[,c(3:15)])
temp<-rain_India_2015
for(i in 1:nrow(temp)) {
  # for-loop over rows
  for(j in 1:ncol(temp))
  {
  if(!is.na(temp[i,j]) & temp[i,j] < 20)
  {
    temp[i,j] <- NA
  }
  }
}
View(temp)


# c. Find the mean rainfall for days where the rainfall was at least 4.
temp2<-rain_India_2015

for(i in 1:nrow(temp2)) {
  # for-loop over rows
  for(j in 3:14)
  {
    if(!is.na(temp2[i,j]) & temp2[i,j] > 3)
    {
      cat("mean of ",temp2$SUBDIVISION[i]," is. ", rowMeans(temp2[i,(3:14)],na.rm = TRUE),"\n")
      break
    }
  }
}

# d. Subset the vector where rainfall is either exactly zero, or exactly 0.6.
temp5<-rain_India_2015
for(i in 1:nrow(temp5)) {
  # for-loop over rows
  for(j in 3:14)
  {
    if(!is.na(temp5[i,j]) & temp5[i,j]==0 | temp5[i,j]==0.6)
    {
      next
    }
    else
    {
      temp5[i,j] <- NA
    }
  }
}
View(temp5[,(1:14)])



