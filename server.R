library(shiny)

shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
    
    plot(c(1000),c(1000),xlim=c(-30,30),ylim=c(-30,30),xlab="X",ylab="Y",main="A*x + B line")
    abline(input$BValue,input$AValue)
  })
})