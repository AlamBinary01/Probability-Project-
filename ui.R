library(shiny)
library(shinydashboard)
library(plotly)
library(datasets)

shinyUI(
  dashboardPage(
    dashboardHeader(title = "Probability Project",titleWidth = 500),
    dashboardSidebar(
      sidebarMenu(
        menuItem("Data",tabName = "data",icon = icon("database")),
        menuItem("Histogram of PH",tabName = "box")
      )
      
    ),
    dashboardBody(
      tabItems(
        tabItem(tabName = "data",dataTableOutput("mydatatable")),
        tabItem(tabName = "box",
                fluidRow(box(title = "Box with a plot",plotlyOutput("plot1",height = 500)))
        )
      )
        
    )
  )
)
