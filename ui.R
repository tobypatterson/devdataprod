library(shiny)
monthsByNameNumber = c(
  'January' = 1,
  'February' = 2,
  'March' = 3,
  'April' = 4,
  'May' = 5,
  'June' = 6,
  'July' = 7,
  'August' = 8,
  'September' = 9,
  'October' = 10,
  'November' = 11,
  'December' = 12
  )
shinyUI(
  pageWithSidebar(
      headerPanel("Energy Cost Analysis"),
      sidebarPanel(
        h3('Utility Rates'),
        p('What is your estimated utility rate? The rate should be kilowatt hours.'),
        numericInput("rate", "Electricity Rate", 100, 0),
        selectInput("month", "Month", choices = monthsByNameNumber, selected = 1),
        h4('Estimated Costs'),
        p('Based on this utility rate and historical data, we estimate the following costs by category for the selected month.'),
        span('Lighting Cost: '),
        textOutput('light', inline=T),
        br(),
        span('Heating Cost: '),
        textOutput('heat', inline=T)
      ),
      mainPanel(
        p('Your historical overall electricity usage is shown below.'),
        plotOutput('plot'),
        p('Enter a utility rate and select a month to estimate your utility charges for the coming year.')
      )    
    )
  )
