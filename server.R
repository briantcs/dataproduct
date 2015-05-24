library(shiny)
library(datasets)

diabetesRisk <- function(glucose) glucose / 250
shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$glucose})
    output$prediction <- renderPrint({diabetesRisk(input$glucose)})
  }
)