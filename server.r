library(shiny)
data(iris)

shinyServer(function(input, output) {
x <- reactive({
  iris[, c(input$xcol)]
})
y <- reactive({
  iris[, c(input$ycol)]
})
output$myplot <- renderPlot({
  plot(x()~y(), xlab = input$xcol, ylab = input$ycol, col= c('coral3', 'goldenrod1', 'cyan3')[iris$Species], pch=21)
})
})