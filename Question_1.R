# A
# 
# a.Create a numeric, character, integer and logical vector.
# b. Create two numeric vectors x and y of different lengths.
# Next, observe the output of 2*x + y - 3.
# c. Create a sequence of all the odd numbers between 100 and 500.
# d. Calculate the mean and standard deviation of sequence created in part c.
# e. Create a list containing a vector, an array and a list.
# f. Create two multiplication compatible matrices M1 and M2 and display their product.
# g. Display row-wise and column-wise mean of the matrix M1.
# h. Combine the matrices M1 and M2 (as in previous part) using rbind/cbind function.
# i. Convert a 3x4 matrix into 2x4 matrix.



x<-5
print(paste("The data-type of x is -> ",class(x)))
y<-'c'
print(paste("The data-type of x is -> ",class(y)))
z<-50L
print(paste("The data-type of x is -> ",class(z)))
v<-c(TRUE,FALSE,TRUE,TRUE,FALSE)
print(paste("The data-type of x is -> ",class(v)))



#--->b

x1<-seq(3,20,by=3)
y1<-seq(5,40,by=4)
print("x1-->")
x1

print("y1-->")
y1

X<-2*x1
print("2*x1--> ")
X

Z<-X+y1
print("2*x1+y1--> ")
Z

print("2*x1+y1-3--> ")
Z-3




#----c
# c. Create a sequence of all the odd numbers between 100 and 500.

oddSeq<-seq(101,500,by=2)
oddSeq

# d. Calculate the mean and standard deviation of sequence created in part c.

"Standard deviation --> " 
sd(oddSeq,na.rm=TRUE)

"MEAN-> "
mean(oddSeq,na.rm=TRUE)



# e. Create a list containing a vector, an array and a list.
ID = c(1, 2, 3, 4)
arr = array(2:13, dim = c(2, 3, 2))
l = list("I am a ",10e7,c(1,0,1),array(1:5,dim=c(5,1,2)))

final_List<-list("vector"=ID,
                 "ARRAY"=arr,
                 "List"=l)

final_List


# f. Create two multiplication compatible matrices M1 
#and M2 and display their product.

m <- matrix(1:8, nrow=2)
n <- matrix(8:15, nrow=2)

m
n
# Multiplying matrices
print(m*n)


# g. Display row-wise and column-wise mean of the matrix M1.

col<-colMeans(m)
row<-rowMeans(m)

col
row


# h. Combine the matrices M1 and M2 (as in previous part)
#using rbind/cbind function.
m
n

rbind(m,n)
cbind(m,n)

# i. Convert a 3x4 matrix into 2x4 matrix.
arr2=array(3:13,dim=c(3,4));
arr2
dim(arr2)=c(2,6);
arr2
