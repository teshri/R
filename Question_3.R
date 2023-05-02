# Download the Toy Dataset CSV file available on Kaggle via the link given (
#   https://www.kaggle.com/carlolepelaars/toy-dataset).
#Write R commands to do the following: 
#a. Read the CSV into a data frame object.
# b. Attach the data frame to the environment.
# c. Count the number of rows with City = New York City.
# d. Display rows that have top 5 income values.
# e. Find out the number of rows with income greater than
#average income. 
#f. Find the highest salary for the female population.
# g. Randomly select 10 rows from the given dataset.
# h. Detach the data frame object from the environment.

# a

df_toy<-toy_dataset
str(df_toy)

# c
temp_df<-df_toy[df_toy$City=="New York City",]
nrow(temp_df)

# d
high_income<-df_toy[order(df_toy$Income,decreasing = TRUE),]
head(high_income,5)

# e
avg_income<-mean(df_toy$Income)
temp_df2<-df_toy[df_toy$Income > avg_income ,]
nrow(temp_df2)


#f
#f. Find the highest salary for the female population.

female_income<-df_toy[df_toy$Gender=='Female',]
female_income[which.max(female_income$Income),]


#g# g. Randomly select 10 rows from the given dataset.

sample_rows<-sample(1:nrow(df_toy), 10,replace=TRUE)
df_toy[sample_rows,]






