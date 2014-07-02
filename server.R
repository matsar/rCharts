require(rCharts)
shinyServer(function(input, output) {
   output$myChart <- renderChart({
      hair_eye = as.data.frame(HairEyeColor)
      p6 <- nPlot(Freq ~ Hair, group = 'Eye', data = subset(hair_eye, Sex == input$gender),
                  type = input$type, dom = 'myChart', width = 800)
      p6$chart(color = c('brown', 'blue', '#594c26', 'green'), stacked = input$stack)
      return(p6)
   })
})