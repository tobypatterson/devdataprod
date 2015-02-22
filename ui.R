library(shiny)
shinyUI(
  pageWithSidebar(
      headerPanel("Energy Cost Analysis"),
      sidebarPanel(
        numericInput("rate", "Electricity Rate", 100, 0),
        p('Lighting Cose'),
        textOutput('light'),
        p('Heating Cost'),
        textOutput('heat')
      ),
      mainPanel(
        plotOutput('plot')       
      )    
    )
  )
