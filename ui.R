library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Visulize your A*x + B line"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("BValue",
                  "Intercept (B-value):",
                  min = -10,
                  max = 10,
                  value = 0),
      sliderInput("AValue",
                  "Slope (A-Value):",
                  min = -10,
                  max = 10,
                  value = 0)
    ),
    
    mainPanel(
      plotOutput("distPlot")
    )
  )
))