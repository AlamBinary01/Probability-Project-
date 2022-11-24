library(shiny)
library(shinydashboard)
library(plotly)
library(datasets)

shinyServer(function(input,output,session){
  ##for display water_potability dataset
  output$mydatatable <- renderDataTable({
    water_potability
  })
  
  output$plot1 <- renderPlotly({
    plot_ly(data = water_potability,x=~ph,type = "histogram")
  })
  
})
