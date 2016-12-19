library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Linear Regression Accuracy estimate"),
  sidebarPanel(
    h4('Estimated Coefficients'),
    numericInput('slope', 'Slope', -2.5),
    numericInput('Intercept', 'Intercept', 35)
  ),
  mainPanel(
    h4('Fitted result to raw data'),
    plotOutput('newHist'),
    br(),
    h4('Instructions'),
    helpText("This application is for linear regression demonstration. Try to change slope and intercept to see results")
  )
))