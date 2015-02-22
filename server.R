library(shiny)
library(plyr)

rawData = read.csv(file="ElectricalOutputWithCat.csv", stringsAsFactors=FALSE)
processedData = data.frame(
  date = as.Date(rawData$timestamp, format="%Y-%m-%d %H:%M:%S", tz="UTC"),
  level = rawData$usage,
  lighting = rawData$appcat_4,
  heating = rawData$appcat_7
)
dataByDays = group_by(processedData, date)
elecUsage  = summarize(dataByDays, 
                       usage=mean(level), 
                       light=mean(lighting),
                       heat=mean(heating)
 )
save(elecUsage, file='ElectricalUsage.Rda')

load('ElectricalUsage.Rda')

shinyServer (
  function (input, output)
  {
    rate = reactive(as.numeric(input$rate))
    output$light = renderText(rate()*mean(elecUsage$light))
    output$heat = renderText(rate()*mean(elecUsage$heat))
    output$plot = renderPlot({
      ggplot(elecUsage, aes(date, usage)) + 
        geom_point() + geom_smooth() +
        scale_x_date() + xlab('') + ylab("Electrical Usage")
    })
  }
)

