library(shiny)
library(ggplot2)
library(dplyr)

# rawData = read.csv(file="ElectricalOutputWithCat.csv", stringsAsFactors=FALSE)
# processedData = data.frame(
#   date = as.Date(rawData$timestamp, format="%Y-%m-%d %H:%M:%S", tz="UTC"),
#   level = rawData$usage/1000,
#   lighting = rawData$appcat_4/1000,
#   heating = rawData$appcat_7/1000
# )
# dataByDays = group_by(processedData, date)
# elecUsage  = summarize(dataByDays, 
#                        usage=mean(level), 
#                        light=mean(lighting),
#                        heat=mean(heating)
#  )
# elecUsage$month = as.numeric(format.Date(elecUsage$date, "%m"))
# save(elecUsage, file='ElectricalUsage.Rda')

load('ElectricalUsage.Rda')

currencyUnit = '$'
roundTo = 2
typicalDaysInMonth = 30
shinyServer (
  function (input, output)
  {
    rate = reactive(as.numeric(input$rate))
    dataByMonth  = reactive(subset(elecUsage, month == as.numeric(input$month)))
    output$light = renderText(paste(
      currencyUnit, 
      round(rate()*mean(dataByMonth()$light)*typicalDaysInMonth, roundTo)
    ))
    output$heat = renderText(paste(
      currencyUnit, 
      round(rate()*mean(dataByMonth()$heat)*typicalDaysInMonth, roundTo)
    ))
    output$plot = renderPlot({
      ggplot(elecUsage, aes(date, usage)) + 
        geom_point() + geom_smooth() +
        scale_x_date() + xlab('') + ylab("Electrical Usage per Day")
    })
  }
)

