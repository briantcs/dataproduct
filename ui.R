library(shiny)

shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Prediction on diabetes"),
    sidebarPanel(
      numericInput('glucose', 'Glucose mg/dl', 90, min = 20, max = 250, step = 1),
      submitButton('Enter')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('Your submission'),
      verbatimTextOutput("inputValue"),
      h4('Which resulted in a prediction of '),
      verbatimTextOutput("prediction")
    )
  )
)