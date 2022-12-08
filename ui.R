library(shiny)
library(shinydashboard)
library(plotly)
library(datasets)
shinyUI(
  dashboardPage(skin = "red",
    dashboardHeader(title = "Pix Progarmmers",titleWidth = 500),
    dashboardSidebar(tags$style(HTML("
                                     .main-sidebar{
                                     width:230px;")),
                     
                   
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
        
        menuItem(" Analysis Of PH",tabName = "mean",
                 menuSubItem(" MEAN",tabName = "mPH"),
                 menuSubItem(" MEDIAN",tabName = "mH"),
                 menuSubItem(" MODE",tabName = "mH1"),
                 menuSubItem("Standard Deviation",tabName = "mH2"),
                 menuSubItem("Variance",tabName = "mH3"),
                 menuSubItem("Max",tabName = "mH4"),
                 menuSubItem("Min",tabName = "mH5")
                 
                 ),
        
        menuItem(" Analysis Of Hardness",tabName = "Hardness",
                 menuSubItem(" MEAN",tabName = "H"),
                 menuSubItem(" MEDIAN",tabName = "H1"),
                 menuSubItem(" MODE",tabName = "H2"),
                 menuSubItem("Standard Deviation",tabName = "H3"),
                 menuSubItem("Variance",tabName = "H4"),
                 menuSubItem("Max",tabName = "H5"),
                 menuSubItem("Min",tabName = "H6")
                 
        ),
        
        menuItem(" Analysis Of Solids",tabName = "Solids",
                 menuSubItem(" MEAN",tabName = "S"),
                 menuSubItem(" MEDIAN",tabName = "S1"),
                 menuSubItem(" MODE",tabName = "S2"),
                 menuSubItem("Standard Deviation",tabName = "S3"),
                 menuSubItem("Variance",tabName = "S4"),
                 menuSubItem("Max",tabName = "S5"),
                 menuSubItem("Min",tabName = "S6")
                 
        ),
        
        menuItem(" Analysis Of Chloromins",tabName = "Chloromins",
                 menuSubItem(" MEAN",tabName = "C"),
                 menuSubItem(" MEDIAN",tabName = "C1"),
                 menuSubItem(" MODE",tabName = "C2"),
                 menuSubItem("Standard Deviation",tabName = "C3"),
                 menuSubItem("Variance",tabName = "C4"),
                 menuSubItem("Max",tabName = "C5"),
                 menuSubItem("Min",tabName = "C6")
                 
                 
        ),
        
        menuItem(" Analysis Of Sulfate",tabName = "Sulfate",
                 menuSubItem(" MEAN",tabName = "SU"),
                 menuSubItem(" MEDIAN",tabName = "SU1"),
                 menuSubItem(" MODE",tabName = "SU2"),
                 menuSubItem("Standard Deviation",tabName = "S3"),
                 menuSubItem("Variance",tabName = "S4"),
                 menuSubItem("Max",tabName = "S5"),
                 menuSubItem("Min",tabName = "S6")
                 
        ),
        
        menuItem(" Analysis Of Conductivity",tabName = "conductivity",
                 menuSubItem(" MEAN",tabName = "CU"),
                 menuSubItem(" MEDIAN",tabName = "CU1"),
                 menuSubItem(" MODE",tabName = "CU2"),
                 menuSubItem("Standard Deviation",tabName = "CU3"),
                 menuSubItem("Variance",tabName = "CU4"),
                 menuSubItem("Max",tabName = "CU5"),
                 menuSubItem("Min",tabName = "CU6")
                 
        ),
        
        menuItem(" Analysis Of Organic Carbon",tabName = "Organic",
                 menuSubItem(" MEAN",tabName = "O"),
                 menuSubItem(" MEDIAN",tabName = "O1"),
                 menuSubItem(" MODE",tabName = "O2"),
                 menuSubItem("Standard Deviation",tabName = "O3"),
                 menuSubItem("Variance",tabName = "O4"),
                 menuSubItem("Max",tabName = "O5"),
                 menuSubItem("Min",tabName = "O6")
                 
        ),
        
        menuItem(" Analysis Of Trihelomethane",tabName = "Trihelomethane",
                 menuSubItem(" MEAN",tabName = "T"),
                 menuSubItem(" MEDIAN",tabName = "T1"),
                 menuSubItem(" MODE",tabName = "T2"),
                 menuSubItem("Standard Deviation",tabName = "T3"),
                 menuSubItem("Variance",tabName = "T4"),
                 menuSubItem("Max",tabName = "T5"),
                 menuSubItem("Min",tabName = "T6")
                 
        ),
        
        menuItem(" Analysis Of Turbidity",tabName = "Turbidity",
                 menuSubItem(" MEAN",tabName = "TU"),
                 menuSubItem(" MEDIAN",tabName = "TU1"),
                 menuSubItem(" MODE",tabName = "TU2"),
                 menuSubItem("Standard Deviation",tabName = "TU3"),
                 menuSubItem("Variance",tabName = "TU4"),
                 menuSubItem("Max",tabName = "TU5"),
                 menuSubItem("Min",tabName = "TU6")
        ),
        
        menuItem(" Distribution Of PH",tabName = "Normal Distribution of PH",
                 menuSubItem(" PNORM",tabName = "P"),
                 menuSubItem(" DNORM",tabName = "D"),
                 menuSubItem(" QNORM",tabName = "Q")
        ),
        menuItem(" Distribution Of Hardness",tabName = "Normal Distribution of Hardness",
                 menuSubItem(" PNORM",tabName = "P1"),
                 menuSubItem(" DNORM",tabName = "D1"),
                 menuSubItem(" QNORM",tabName = "Q1")
        ),
        menuItem(" Distribution Of Solids",tabName = "Normal Distribution of Solids",
                 menuSubItem(" PNORM",tabName = "P2"),
                 menuSubItem(" DNORM",tabName = "D2"),
                 menuSubItem(" QNORM",tabName = "Q2")
        ),
        menuItem(" Distribution Of Chloramines",tabName = "Normal Distribution of Chloramines",
                 menuSubItem(" PNORM",tabName = "P3"),
                 menuSubItem(" DNORM",tabName = "D3"),
                 menuSubItem(" QNORM",tabName = "Q3")
        ),
        menuItem(" Distribution Of Sulfate",tabName = "Normal Distribution of Sulfate",
                 menuSubItem(" PNORM",tabName = "P4"),
                 menuSubItem(" DNORM",tabName = "D4"),
                 menuSubItem(" QNORM",tabName = "Q4")
        ),
        menuItem(" Distribution Of Conductivity",tabName = "Normal Distribution of COnductivity",
                 menuSubItem(" PNORM",tabName = "P5"),
                 menuSubItem(" DNORM",tabName = "D5"),
                 menuSubItem(" QNORM",tabName = "Q5")
        ),
        menuItem(" Distribution Of Organic Carbon",tabName = "Normal Distribution of organic Carbon",
                 menuSubItem(" PNORM",tabName = "P6"),
                 menuSubItem(" DNORM",tabName = "D6"),
                 menuSubItem(" QNORM",tabName = "Q6")
        ),
        menuItem(" Distribution Of Trihelomethane",tabName = "Normal Distribution of Trihelomethane",
                 menuSubItem(" PNORM",tabName = "P7"),
                 menuSubItem(" DNORM",tabName = "D7"),
                 menuSubItem(" QNORM",tabName = "Q7")
        ),
        menuItem(" Distribution Of Turbidity",tabName = "Normal Distribution of Turbidity",
                 menuSubItem(" PNORM",tabName = "P8"),
                 menuSubItem(" DNORM",tabName = "D8"),
                 menuSubItem(" QNORM",tabName = "Q8")
        ),
        menuItem(" Covariance of Dataset",tabName = "covariance",
                 menuSubItem(" Ph and Hardness",tabName = "a11"),
                 menuSubItem(" hardness and solids",tabName = "s11"),
                 menuSubItem(" Sulfate and chloramies",tabName = "d11"),
                 menuSubItem(" Conductivity and Organic",tabName = "f11"),
                 menuSubItem("Trihalomethane & Turb",tabName = "g11")
        ),
        menuItem(" co relation of Dataset",tabName = "covariance",
                 menuSubItem(" Ph and Hardness",tabName = "a1"),
                 menuSubItem(" hardness and solids",tabName = "s1"),
                 menuSubItem(" Sulfate and chloramies",tabName = "d1"),
                 menuSubItem(" Conductivity and Organic",tabName = "f1"),
                 menuSubItem("Trihalomethane & Turb",tabName = "g1")
        )
        
        
        
      #Linear regression and co-variance and
        
      )
      
    ),
    dashboardBody(
      tabItems(
        tabItem(tabName = "data",dataTableOutput("mydatatable")),
        tabItem(tabName = "d",dataTableOutput("dataPH")),
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
      tabItem(tabName = "mH4",fluidRow(infoBoxOutput("mH4",width = 4))),
      tabItem(tabName = "mH5",fluidRow(infoBoxOutput("mH5",width = 4))),

      
      
      
      # Statistical Analysis of Hardness
      tabItem(tabName = "H",fluidRow(infoBoxOutput("H",width = 4))),
      tabItem(tabName = "H1",fluidRow(infoBoxOutput("H1",width = 4))),
      tabItem(tabName = "H2",fluidRow(infoBoxOutput("H2",width = 4))),
      tabItem(tabName = "H3",fluidRow(infoBoxOutput("H3",width = 4))),
      tabItem(tabName = "H4",fluidRow(infoBoxOutput("H4",width = 4))),
      tabItem(tabName = "H5",fluidRow(infoBoxOutput("H5",width = 4))),
      tabItem(tabName = "H6",fluidRow(infoBoxOutput("H6",width = 4))),
      
      
      #Statistical Analysis of Solids
      tabItem(tabName = "S",fluidRow(infoBoxOutput("S",width = 4))),
      tabItem(tabName = "S1",fluidRow(infoBoxOutput("S1",width = 4))),
      tabItem(tabName = "S2",fluidRow(infoBoxOutput("S2",width = 4))),
      tabItem(tabName = "S3",fluidRow(infoBoxOutput("S3",width = 4))),
      tabItem(tabName = "S4",fluidRow(infoBoxOutput("S4",width = 4))),
      tabItem(tabName = "S5",fluidRow(infoBoxOutput("S5",width = 4))),
      tabItem(tabName = "S6",fluidRow(infoBoxOutput("S6",width = 4))),
     
      
      #Statistical Analysis of Chloromines
      tabItem(tabName = "C",fluidRow(infoBoxOutput("C",width = 4))),
      tabItem(tabName = "C1",fluidRow(infoBoxOutput("C1",width = 4))),
      tabItem(tabName = "C2",fluidRow(infoBoxOutput("C2",width = 4))),
      tabItem(tabName = "C3",fluidRow(infoBoxOutput("C3",width = 4))),
      tabItem(tabName = "C4",fluidRow(infoBoxOutput("C4",width = 4))),
      tabItem(tabName = "C5",fluidRow(infoBoxOutput("C5",width = 4))),
      tabItem(tabName = "C6",fluidRow(infoBoxOutput("C6",width = 4))),
      
      
      #Statistical Analysis of Sulfate
      tabItem(tabName = "SU",fluidRow(infoBoxOutput("SU",width = 4))),
      tabItem(tabName = "SU1",fluidRow(infoBoxOutput("SU1",width = 4))),
      tabItem(tabName = "SU2",fluidRow(infoBoxOutput("SU2",width = 4))),
      tabItem(tabName = "SU3",fluidRow(infoBoxOutput("SU3",width = 4))),
      tabItem(tabName = "SU4",fluidRow(infoBoxOutput("SU4",width = 4))),
      tabItem(tabName = "SU5",fluidRow(infoBoxOutput("SU5",width = 4))),
      tabItem(tabName = "SU6",fluidRow(infoBoxOutput("SU6",width = 4))),
   
      
      # Staistical Analysis of Conductivity
      tabItem(tabName = "CU",fluidRow(infoBoxOutput("CU",width = 4))),
      tabItem(tabName = "CU1",fluidRow(infoBoxOutput("CU1",width = 4))),
      tabItem(tabName = "CU2",fluidRow(infoBoxOutput("CU2",width = 4))),
      tabItem(tabName = "CU3",fluidRow(infoBoxOutput("CU3",width = 4))),
      tabItem(tabName = "CU4",fluidRow(infoBoxOutput("CU4",width = 4))),
      tabItem(tabName = "CU5",fluidRow(infoBoxOutput("CU5",width = 4))),
      tabItem(tabName = "CU6",fluidRow(infoBoxOutput("CU6",width = 4))),
    
      
      #Statistical Analysis of Organic Carbon
      tabItem(tabName = "O",fluidRow(infoBoxOutput("O",width = 4))),
      tabItem(tabName = "O1",fluidRow(infoBoxOutput("O1",width = 4))),
      tabItem(tabName = "O2",fluidRow(infoBoxOutput("O2",width = 4))),
      tabItem(tabName = "O3",fluidRow(infoBoxOutput("O3",width = 4))),
      tabItem(tabName = "O4",fluidRow(infoBoxOutput("O4",width = 4))),
      tabItem(tabName = "O5",fluidRow(infoBoxOutput("O5",width = 4))),
      tabItem(tabName = "O6",fluidRow(infoBoxOutput("O6",width = 4))),
      
      
      #Statistical Analysis of Trihelomethane
      tabItem(tabName = "T",fluidRow(infoBoxOutput("T",width = 4))),
      tabItem(tabName = "T1",fluidRow(infoBoxOutput("T1",width = 4))),
      tabItem(tabName = "T2",fluidRow(infoBoxOutput("T2",width = 4))),
      tabItem(tabName = "T3",fluidRow(infoBoxOutput("T3",width = 4))),
      tabItem(tabName = "T4",fluidRow(infoBoxOutput("T4",width = 4))),
      tabItem(tabName = "T5",fluidRow(infoBoxOutput("T5",width = 4))),
      tabItem(tabName = "T6",fluidRow(infoBoxOutput("T6",width = 4))),
     
      
      #Statistical Analysis of Turbidity
      tabItem(tabName = "TU",fluidRow(infoBoxOutput("TU",width = 4))),
      tabItem(tabName = "TU1",fluidRow(infoBoxOutput("TU1",width = 4))),
      tabItem(tabName = "TU2",fluidRow(infoBoxOutput("TU2",width = 4))),
      tabItem(tabName = "TU3",fluidRow(infoBoxOutput("TU3",width = 4))),
      tabItem(tabName = "TU4",fluidRow(infoBoxOutput("TU4",width = 4))),
      tabItem(tabName = "TU5",fluidRow(infoBoxOutput("TU5",width = 4))),
      tabItem(tabName = "TU6",fluidRow(infoBoxOutput("TU6",width = 4))),
      
      #Normal Distribution PH
      tabItem(tabName = "P",fluidRow(valueBoxOutput("P",width = 4))),
      tabItem(tabName = "Q",fluidRow(infoBoxOutput("Q",width = 4))),
      tabItem(tabName = "D",fluidRow(infoBoxOutput("D",width = 4))),
      #Normal Distribution Hardness
      tabItem(tabName = "P1",fluidRow(valueBoxOutput("P1",width = 4))),
      tabItem(tabName = "Q1",fluidRow(infoBoxOutput("Q1",width = 4))),
      tabItem(tabName = "D1",fluidRow(infoBoxOutput("D1",width = 4))),
      #Normal Distribution Solids
      tabItem(tabName = "P2",fluidRow(valueBoxOutput("P2",width = 4))),
      tabItem(tabName = "Q2",fluidRow(infoBoxOutput("Q2",width = 4))),
      tabItem(tabName = "D2",fluidRow(infoBoxOutput("D2",width = 4))),
      
      #Normal Distribution Chloramines
      tabItem(tabName = "P3",fluidRow(valueBoxOutput("P3",width = 4))),
      tabItem(tabName = "Q3",fluidRow(infoBoxOutput("Q3",width = 4))),
      tabItem(tabName = "D3",fluidRow(infoBoxOutput("D3",width = 4))),
      #Normal Distribution Sulfate
      tabItem(tabName = "P4",fluidRow(valueBoxOutput("P4",width = 4))),
      tabItem(tabName = "Q4",fluidRow(infoBoxOutput("Q4",width = 4))),
      tabItem(tabName = "D4",fluidRow(infoBoxOutput("D4",width = 4))),
      #Normal Distribution Conductivity
      tabItem(tabName = "P5",fluidRow(valueBoxOutput("P5",width = 4))),
      tabItem(tabName = "Q5",fluidRow(infoBoxOutput("Q5",width = 4))),
      tabItem(tabName = "D5",fluidRow(infoBoxOutput("D5",width = 4))),
      #Normal Distribution Organic carbon
      tabItem(tabName = "P6",fluidRow(valueBoxOutput("P6",width = 4))),
      tabItem(tabName = "Q6",fluidRow(infoBoxOutput("Q6",width = 4))),
      tabItem(tabName = "D6",fluidRow(infoBoxOutput("D6",width = 4))),
      #Normal Distribution Trihelomethane
      tabItem(tabName = "P7",fluidRow(valueBoxOutput("P7",width = 4))),
      tabItem(tabName = "Q7",fluidRow(infoBoxOutput("Q7",width = 4))),
      tabItem(tabName = "D7",fluidRow(infoBoxOutput("D7",width = 4))),
      #Normal Distribution Turbidity
      tabItem(tabName = "P8",fluidRow(valueBoxOutput("P8",width = 4))),
      tabItem(tabName = "Q8",fluidRow(infoBoxOutput("Q8",width = 4))),
      tabItem(tabName = "D8",fluidRow(infoBoxOutput("D8",width = 4))),
      
    #covariance of given datasets
    tabItem(tabName = "a11",fluidRow(valueBoxOutput("a11",width = 4))),
    tabItem(tabName = "s11",fluidRow(valueBoxOutput("s11",width = 4))),
    tabItem(tabName = "d11",fluidRow(valueBoxOutput("d11",width = 4))),
    tabItem(tabName = "f11",fluidRow(valueBoxOutput("f11",width = 4))),
    tabItem(tabName = "g11",fluidRow(valueBoxOutput("g11",width = 4))),
    
    #corelations of given datasets
    tabItem(tabName = "a1",fluidRow(valueBoxOutput("a1",width = 4))),
    tabItem(tabName = "s1",fluidRow(valueBoxOutput("s1",width = 4))),
    tabItem(tabName = "d1",fluidRow(valueBoxOutput("d1",width = 4))),
    tabItem(tabName = "f1",fluidRow(valueBoxOutput("f1",width = 4))),
    tabItem(tabName = "g1",fluidRow(valueBoxOutput("g1",width = 4)))
    
      )
        
    )
 )

 )
