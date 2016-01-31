library(shiny)

shinyUI(fluidPage(
  titlePanel("Iris Data"),
  sidebarPanel(
    h3("Select variables for the X and Y axis."),
    selectInput('xcol', 'X Variable', names(iris[,1:4])),
    selectInput('ycol', 'Y Variable', names(iris[,1:4])),
    br(),
    h4("Documentation: This app runs against the Iris dataset and 
       allows you two choose two of the four variables to plot against 
      each other in order to see how they correlate. The colors represent the
      three different Iris species in the dataset as follows: Coral = Setosa; 
      Yellow = Versicolor; Cyan = Virginica.")),
  
  mainPanel(
    h4("Iris Data Plot"),
    plotOutput("myplot")
  )
))