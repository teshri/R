# Q9. Create a database songs that contains the fields {song_name, mood,
#   online_link_play_song}. Create an application where the mood of the user
# is given as input and the list of songs corresponding to that mood appears
# as the output. The user can listen to any song form the list via the online
# link given.





library(RMySQL)
library(shiny)

mydb = dbConnect(MySQL(), user='root', password="jatin123456",
                 dbname='Songs', host='localhost',port=3306)

dbListTables(mydb)

createTable <- dbSendQuery(mydb,
   "CREATE TABLE SongsForMood (
    Song_Name varchar(100),
    Mood varchar(255),
    Song_Link varchar(255)
);")

#result <-dbSendQuery(mydb,"DESC SongsForMood;")
# INSERT INTO employee_details VALUES
# ('E40004','SANTHOSH','E102',25),
# ('E40005','THAMAN','E103',26),
# ('E40006','HARSH','E101',25),
# ('E40007','SAMHITH','E102',26);

dbClearResult(dbListResults(mydb)[[1]])

dbSendQuery(mydb,
"INSERT INTO SongsForMood VALUES
('Takeaway','Nostalgic','https://www.youtube.com/watch?v=lzkKzZmRZk8');")


dbSendQuery(mydb,
"INSERT INTO SongsForMood VALUES
('past life','Nostalgic','https://www.youtube.com/watch?v=FVZ7TuTqEIM');")

dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Tyler Herro','Hyped','https://www.youtube.com/watch?v=np9Ub1LilKU');")

dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Count ME OUT','Hyped','https://www.youtube.com/watch?v=5GhhVHpPR_M');")

dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Fantasy','Hyped','https://www.youtube.com/watch?v=-A7lRhRfUTAs');")

dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Search & rescue ','Hyped','https://www.youtube.com/watch?v=ntp9_iznQ-0');")

dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('I wonder','Hyped','https://www.youtube.com/watch?v=MxEjnYdfLXU');")

dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Hide','Sad','https://www.youtube.com/watch?v=uYHNdTPV7pM');")

dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Middle Child','Hyped','https://www.youtube.com/watch?v=WILNIXZr2oc');")

dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Idfc','Sad','https://www.youtube.com/watch?v=v0pjeUTad2I');")

dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Legacy','Hyped','https://www.youtube.com/watch?v=7csKaIhn8NY');")

dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Donald Trump','Hyped','https://www.youtube.com/watch?v=aiz1qwGaD8I');")

dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Bones','Hyped','https://www.youtube.com/watch?v=TO-_3tck2tg');")

dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Superman','Hyped','https://www.youtube.com/watch?v=K_8yRH2KPVo');")


dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Mercy' ,'Sad','https://www.youtube.com/watch?v=KkGVmN68ByU');")

dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Treat you BETTER' ,'Sad','https://www.youtube.com/watch?v=lY2yjAdbvdQ');")

dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Stiches' ,'Sad','https://www.youtube.com/watch?v=VbfpW0pbvaU');")
dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Heathens' ,'Sad','https://www.youtube.com/watch?v=UprcpdwuwCg');")
dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Stressed OUT' ,'Sad','https://www.youtube.com/watch?v=pXRviuL6vMY');")
dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Sweater Weather ' ,'Sad','https://www.youtube.com/watch?v=GCdwKhTtNNw');")

dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('YoungBlood' ,'Sad','https://www.youtube.com/watch?v=-RJSbO8UZVY');")
dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Stay High' ,'Sad','https://www.youtube.com/watch?v=SKQ5r3AoXKs');")
dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('life A MESS','Sad','https://www.youtube.com/watch?v=IetcXhv83gQ');")

dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('All time low' ,'Nostalgic','https://www.youtube.com/watch?v=AXnqkVTFUqY');")

dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Good life' ,'Nostalgic','https://www.youtube.com/watch?v=FG9M0aEpJGE');")
dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Home' ,'Nostalgic','https://www.youtube.com/watch?v=IumYMCllMsM');")
dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('EastSide' ,'Nostalgic','https://www.youtube.com/watch?v=56WBK4ZK_cw');")
dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('A Different Way' ,'Nostalgic','https://www.youtube.com/watch?v=UuCq8mtK8J4');")
dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('international love' ,'Nostalgic','https://www.youtube.com/watch?v=CdXesX6mYUE');")

dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('hall of fame' ,'Nostalgic','https://www.youtube.com/watch?v=mk48xRzuNvA');")
dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('remember the name' ,'Nostalgic','https://www.youtube.com/watch?v=VDvr08sCPOc');")
dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Till I collapse' ,'Nostalgic','https://www.youtube.com/watch?v=F16ZS6rM29s');")
dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Puruit of happiness' ,'Happy','https://www.youtube.com/watch?v=7xzU9Qqdqww&list=RD7xzU9Qqdqww&start_radio=1');")
dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Numb' ,'Happy','https://www.youtube.com/watch?v=kXYiU_JCYtU');")
dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('CANt HOLD US' ,'Happy','https://www.youtube.com/watch?v=2zNSgSzhBfM');")
dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('hymn For the weekend' ,'Happy','https://www.youtube.com/watch?v=YykjpeuMNEk');")
dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Paradise' ,'Happy','https://www.youtube.com/watch?v=1G4isv_Fylg');")
dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Waiting for love' ,'Happy','https://www.youtube.com/watch?v=cHHLHGNpCSA');")
dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('beautiful' ,'Happy','https://www.youtube.com/watch?v=n1a7o44WxNo');")
dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Beautiful' ,'Happy','https://www.youtube.com/watch?v=rSOzN0eihsE');")
dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Right Now' ,'Happy','https://www.youtube.com/watch?v=vIaH35-MLsk');")
dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Ignite' ,'Happy','https://www.youtube.com/watch?v=Az-mGR-CehY');")
dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('panic at the Disco' ,'Happy','https://www.youtube.com/watch?v=IPXIgEAGe4U');")
dbSendQuery(mydb,
            "INSERT INTO SongsForMood VALUES
('Immortals' ,'Happy','https://www.youtube.com/watch?v=l9PxOanFjxQ');")



res <- dbGetQuery(mydb,"select * from SongsForMood;")
View(res)



ui <- fluidPage(
  titlePanel("Whats Your Mood !"),

  sidebarLayout(
    sidebarPanel(
      helpText("I will suggest you songs according to your MOOD,
               so relax"),

      selectInput("var",
                  label = "Choose a MOOD",
                  choices = c("Hyped",
                              "Sad",
                              "Happy",
                              "Nostalgic")
                  ),
    ),
    mainPanel(
      tableOutput("selected_var"),
    )
  )
)

server <- function(input, output) {

  output$selected_var <- renderTable({
    subset(res,Mood==input$var)
  })
}

shinyApp(ui, server)








