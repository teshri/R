 library(readr)
# a) For each year, display the country with maximum Beer 
 #consumption and minimum Wine consumption.
 #b) Find the average alcohol consumption for each country.
# c) Find the Beer consumption for New Zealand for the year(s)
 #when its spirit consumption was more than the mean spirit consumption.
# d) Find the average Beer consumption/Wine C onsumption/Spirit consumption for each year.
# e) Plot the mean Beer consumption/mean Wine consumption/mean 
 #Spirit consumption for each country using a
# suitable plot.
 # Q8. Create a package in R to perform certain basic statistics functions.
 # Q9. Create a database songs that contains the fields {song_name, mood,
 #   online_link_play_song}. Create an application where the mood of the user 
 # is given as input and the list of songs corresponding to that mood appears as the output. 
 # The user can listen to any song form the list via the online link given.]
 
data<- read_csv("~/Downloads/Untitled spreadsheet - Sheet1.csv")
View(data)


# a) For each year, display the country with maximum Beer 
 #consumption and minimum Wine consumption.

data_Mod<- data[order(data$BEER,-data$WINE),]
data_Mod


#b) Find the average alcohol consumption for each country.

mean(c(data$BEER,data$WINE,data$Spirit),na.rm=TRUE)


# HINT 

# # Select Rows by Checking multiple conditions
# df[df$gender == 'M' | df$state == 'PH',]
# 
# df[df$gender == 'M' & df$state %in% c('CA','NY'),]


# c) Find the Beer consumption for New Zealand for the year(s)
 #when its spirit consumption was more than the mean spirit consumption.

data_for_C<-data[data$Spirit > mean(data$Spirit) & data$Country=='NewZealand',]
data_for_C[,c(3:5)]



# d) Find the average Beer consumption/Wine
#Consumption/Spirit consumption for each year.
Beer_per_year<-aggregate(data$BEER,
          list(data$Year),      
          FUN = mean)

Wine<-aggregate(data$WINE,
list(data$Year),      
FUN = mean)

Spirit_per_year<-aggregate(data$Spirit,
list(data$Year),      
FUN = mean)

df_list<-list(Beer_per_year,Wine,Spirit_per_year)
df_list








# e) Plot the mean Beer consumption/mean Wine consumption/mean 
#Spirit consumption for each country using a
# suitable plot.

# colors = c("green", "orange", "brown")
# months <- c("Mar", "Apr", "May", "Jun", "Jul")
# regions <- c("East", "West", "North")
# 
# # Create the matrix of the values.
# Values <- matrix(c(2, 9, 3, 11, 9, 4, 8, 7, 3, 12, 5, 2, 8, 10, 11), 
#                  nrow = 3, ncol = 5, byrow = TRUE)
# 
# # Create the bar chart
# barplot(Values, main = "Total Revenue", names.arg = months, 
#         xlab = "Month", ylab = "Revenue", 
#         col = colors, beside = TRUE)
# 
# # Add the legend to the chart
# legend("topleft", regions, cex = 0.7, fill = colors)


Beer_per_Country<-aggregate(data$BEER,
list(data$Country),      
FUN = mean)

Wine_per_Country<-aggregate(data$WINE,
list(data$Country),      
FUN = mean)

Spirit_per_Country<-aggregate(data$Spirit,
list(data$Country),      
FUN = mean)

dev.new(width=2, height=4, unit="in")

country_names <- c("Australia","NewZealand")
colors = c("green", "orange","brown")
regions <- c("Beer", "Wine", "Spirit")

Consumption_matrix <-
  matrix(c(Beer_per_Country$x,Wine_per_Country$x,Spirit_per_Country$x),
         ncol = 2,byrow = TRUE)

print(Consumption_matrix)
barplot(Consumption_matrix, main = "Total Consumption",
        names.arg = country_names, 
        xlab = "Country", ylab = "Consumption", 
        col = colors, beside = TRUE)
legend("topright", regions, cex = 0.7, fill = colors)























