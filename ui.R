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
        menuItem("Graphical Representation",tabName = "box",
                 menuSubItem("Histogram of Ph",tabName = "box"),
                 menuSubItem("Histogram of Hardness",tabName = "h"),
                 menuSubItem("Histogram of Solids",tabName = "s"),
                 menuSubItem("Histogram of Chloromines",tabName = "chloromines"),
                 menuSubItem("Histogram of Sulfate",tabName = "sulfate"),
                 menuSubItem("Histogram of Condunctivity",tabName = "conductivity"),
                 menuSubItem("Histogram of Organic Carbon",tabName = "organic"),
                 menuSubItem("Histogram of Trihelomethane",tabName = "trihelo"),
                 menuSubItem("Histogram of Turbidity",tabName = "turbidity"),
                 menuSubItem("Histogram of Potability",tabName = "potability")
                 
                 ),
        
        menuItem("Statistical Analysis Of PH",tabName = "mean",
                 menuSubItem(" MEAN",tabName = "mPH"),
                 menuSubItem(" MEDIAN",tabName = "mH"),
                 menuSubItem(" MODE",tabName = "mH1"),
                 menuSubItem("Standard Deviation",tabName = "mH2"),
                 menuSubItem("Variance",tabName = "mH3")
                 
                 ),
        
        menuItem("Statistical Analysis Of Hardness",tabName = "Hardness",
                 menuSubItem(" MEAN",tabName = "H"),
                 menuSubItem(" MEDIAN",tabName = "H1"),
                 menuSubItem(" MODE",tabName = "H2"),
                 menuSubItem("Standard Deviation",tabName = "H3"),
                 menuSubItem("Variance",tabName = "H4")
                 
        ),
        
        menuItem("Statistical Analysis Of Solids",tabName = "Solids",
                 menuSubItem(" MEAN",tabName = "S"),
                 menuSubItem(" MEDIAN",tabName = "S1"),
                 menuSubItem(" MODE",tabName = "S2"),
                 menuSubItem("Standard Deviation",tabName = "S3"),
                 menuSubItem("Variance",tabName = "S4")
                 
        ),
        
        menuItem("Statistical Analysis Of Chloromins",tabName = "Chloromins",
                 menuSubItem(" MEAN",tabName = "C"),
                 menuSubItem(" MEDIAN",tabName = "C1"),
                 menuSubItem(" MODE",tabName = "C2"),
                 menuSubItem("Standard Deviation",tabName = "C3"),
                 menuSubItem("Variance",tabName = "C4")
                 
        ),
        
        menuItem("Statistical Analysis Of Sulfate",tabName = "Sulfate",
                 menuSubItem(" MEAN",tabName = "SU"),
                 menuSubItem(" MEDIAN",tabName = "SU1"),
                 menuSubItem(" MODE",tabName = "SU2"),
                 menuSubItem("Standard Deviation",tabName = "S3"),
                 menuSubItem("Variance",tabName = "S4")
                 
        ),
        
        menuItem("Statistical Analysis Of Hardness",tabName = "conductivity",
                 menuSubItem(" MEAN",tabName = "CO"),
                 menuSubItem(" MEDIAN",tabName = "CO1"),
                 menuSubItem(" MODE",tabName = "CO2"),
                 menuSubItem("Standard Deviation",tabName = "CO3"),
                 menuSubItem("Variance",tabName = "CO4")
                 
        ),
        
        menuItem("Statistical Analysis Of Hardness",tabName = "Organic",
                 menuSubItem(" MEAN",tabName = "O"),
                 menuSubItem(" MEDIAN",tabName = "O1"),
                 menuSubItem(" MODE",tabName = "O2"),
                 menuSubItem("Standard Deviation",tabName = "O3"),
                 menuSubItem("Variance",tabName = "O4")
                 
        ),
        
        menuItem("Statistical Analysis Of Hardness",tabName = "Trihelomethane",
                 menuSubItem(" MEAN",tabName = "T"),
                 menuSubItem(" MEDIAN",tabName = "T1"),
                 menuSubItem(" MODE",tabName = "T2"),
                 menuSubItem("Standard Deviation",tabName = "T3"),
                 menuSubItem("Variance",tabName = "T4")
                 
        ),
        
        menuItem("Statistical Analysis Of Hardness",tabName = "Turbidity",
                 menuSubItem(" MEAN",tabName = "TU"),
                 menuSubItem(" MEDIAN",tabName = "TU1"),
                 menuSubItem(" MODE",tabName = "TU2"),
                 menuSubItem("Standard Deviation",tabName = "TU3"),
                 menuSubItem("Variance",tabName = "TU4")
                 
        )
        
        
        
        
        
        
        
        
        
        
      )
      
    ),
    dashboardBody(
      tabItems(
        tabItem(tabName = "data",dataTableOutput("mydatatable")),
        tabItem(tabName = "box",
                fluidRow(box(title = "Histogram of PH",plotlyOutput("plot1",height = 500))),
              
        ),
        tabItem(tabName = "h",
              
                fluidRow(box(title = "Histogram of Hardness",plotlyOutput("plot2",height = 500)))
        ),
        tabItem(tabName = "s",
                
                fluidRow(box(title = "Histogram of Solids",plotlyOutput("plot3",height = 500)))
        ),
        tabItem(tabName = "chloromines",
                
                fluidRow(box(title = "Histogram of Chloromies",plotlyOutput("plot4",height = 500)))
        ),
        tabItem(tabName = "sulfate",
                
                fluidRow(box(title = "Histogram of Sulfate",plotlyOutput("plot5",height = 500)))
        ),
        tabItem(tabName = "conductivity",
                
                fluidRow(box(title = "Histogram of Conductivity",plotlyOutput("plot6",height = 500)))
        ),
        tabItem(tabName = "organic",
                
                fluidRow(box(title = "Histogram of Organic Carbon",plotlyOutput("plot7",height = 500)))
        ),
        tabItem(tabName = "trihelo",
                
                fluidRow(box(title = "Histogram of Trihelo",plotlyOutput("plot8",height = 500)))
        ),
        tabItem(tabName = "turbidity",
                
                fluidRow(box(title = "Histogram of turbidity",plotlyOutput("plot9",height = 500)))
        ),
        tabItem(tabName = "potability",
                
                fluidRow(box(title = "Histogram of potability",plotlyOutput("plot10",height = 500)))
        ),
        
      #Staistical Analysis of PH
        
        tabItem(tabName = "mPH",fluidRow(infoBoxOutput("mPH",width = 4))),
        tabItem(tabName = "mH",fluidRow(infoBoxOutput("mH",width = 4))),
        tabItem(tabName = "mH1",fluidRow(infoBoxOutput("mH1",width = 4))),
        tabItem(tabName = "mH2",fluidRow(infoBoxOutput("mH2",width = 4))),
        tabItem(tabName = "mH3",fluidRow(infoBoxOutput("mH3",width = 4))),
      
      
      # Statistical Analysis of Hardness
      tabItem(tabName = "H",fluidRow(infoBoxOutput("H",width = 4))),
      tabItem(tabName = "H1",fluidRow(infoBoxOutput("H1",width = 4))),
      tabItem(tabName = "H2",fluidRow(infoBoxOutput("H2",width = 4))),
      tabItem(tabName = "H3",fluidRow(infoBoxOutput("H3",width = 4))),
      tabItem(tabName = "H4",fluidRow(infoBoxOutput("H4",width = 4))),
      
      #Statistical Analysis of Solids
      tabItem(tabName = "S",fluidRow(infoBoxOutput("S",width = 4))),
      tabItem(tabName = "S1",fluidRow(infoBoxOutput("S1",width = 4))),
      tabItem(tabName = "S2",fluidRow(infoBoxOutput("S2",width = 4))),
      tabItem(tabName = "S3",fluidRow(infoBoxOutput("S3",width = 4))),
      tabItem(tabName = "S4",fluidRow(infoBoxOutput("S4",width = 4))),
      
      #Statistical Analysis of Chloromines
      tabItem(tabName = "C",fluidRow(infoBoxOutput("C",width = 4))),
      tabItem(tabName = "C1",fluidRow(infoBoxOutput("C1",width = 4))),
      tabItem(tabName = "C2",fluidRow(infoBoxOutput("C2",width = 4))),
      tabItem(tabName = "C3",fluidRow(infoBoxOutput("C1",width = 4))),
      tabItem(tabName = "C4",fluidRow(infoBoxOutput("C2",width = 4))),
      
      #Statistical Analysis of Sulfate
      tabItem(tabName = "SU",fluidRow(infoBoxOutput("SU",width = 4))),
      tabItem(tabName = "SU1",fluidRow(infoBoxOutput("SU1",width = 4))),
      tabItem(tabName = "SU2",fluidRow(infoBoxOutput("SU2",width = 4))),
      tabItem(tabName = "SU3",fluidRow(infoBoxOutput("SU1",width = 4))),
      tabItem(tabName = "SU4",fluidRow(infoBoxOutput("SU2",width = 4))),
      
      # Staistical Analysis of Conductivity
      tabItem(tabName = "CU",fluidRow(infoBoxOutput("CU",width = 4))),
      tabItem(tabName = "CU1",fluidRow(infoBoxOutput("CU1",width = 4))),
      tabItem(tabName = "CU2",fluidRow(infoBoxOutput("CU2",width = 4))),
      tabItem(tabName = "CU3",fluidRow(infoBoxOutput("CU1",width = 4))),
      tabItem(tabName = "CU4",fluidRow(infoBoxOutput("CU2",width = 4))),
      
      #Statistical Analysis of Organic Carbon
      tabItem(tabName = "O",fluidRow(infoBoxOutput("O",width = 4))),
      tabItem(tabName = "O1",fluidRow(infoBoxOutput("O1",width = 4))),
      tabItem(tabName = "O2",fluidRow(infoBoxOutput("O2",width = 4))),
      tabItem(tabName = "O3",fluidRow(infoBoxOutput("O1",width = 4))),
      tabItem(tabName = "O4",fluidRow(infoBoxOutput("O2",width = 4))),
      
      #Statistical Analysis of Trihelomethane
      tabItem(tabName = "T",fluidRow(infoBoxOutput("T",width = 4))),
      tabItem(tabName = "T1",fluidRow(infoBoxOutput("T1",width = 4))),
      tabItem(tabName = "T2",fluidRow(infoBoxOutput("T2",width = 4))),
      tabItem(tabName = "T3",fluidRow(infoBoxOutput("T1",width = 4))),
      tabItem(tabName = "T4",fluidRow(infoBoxOutput("T2",width = 4))),
      
      #Statistical Analysis of Turbidity
      tabItem(tabName = "TU",fluidRow(infoBoxOutput("TU",width = 4))),
      tabItem(tabName = "TU1",fluidRow(infoBoxOutput("Tu1",width = 4))),
      tabItem(tabName = "TU2",fluidRow(infoBoxOutput("TU2",width = 4))),
      tabItem(tabName = "TU3",fluidRow(infoBoxOutput("Tu1",width = 4))),
      tabItem(tabName = "TU4",fluidRow(infoBoxOutput("TU2",width = 4)))
      
     
      
      )
        
    )
 )

 )
