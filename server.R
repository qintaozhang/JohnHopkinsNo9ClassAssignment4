library(shiny)
shinyServer(
  function(input, output){    output$newHist <- renderPlot({
    library(ggplot2)
    library(datasets)
    data(mtcars)
    predicted<- input$slope*mtcars$cyl+input$Intercept
    ggplot(mtcars,aes(cyl,mpg))+geom_point()+
    geom_line(data=mtcars,aes(cyl,predicted))
  })  }
)

