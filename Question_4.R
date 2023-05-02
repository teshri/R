# Q4. Write R commands to do the following:
# a. Create a sample STUDENT table in the MySQL database.
# b. Insert 5 rows into the STUDENT table.
# c. Display all the information stored in STUDENT table.
# d. Delete all the rows from STUDENT table.
# e. Drop the STUDENT table.

library("RMySQL")

mysqlconnection = dbConnect(RMySQL::MySQL(),
                            dbname='Jatin_11',
                            host='localhost',
                            port=8888,
                            user='root',
                            password="")