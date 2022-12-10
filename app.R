library(shinythemes)
library(shinyWidgets)
library(shiny)
library(shinydashboard)

# Define UI for application
ui = fluidPage(
  navbarPage("Linear Regression Model",
             
             tabPanel("Simple Regression",
                      tabname="regression",
                      icon=icon("calculator"),
                      verbatimTextOutput(outputId = "RegOut"),
                      verbatimTextOutput(outputId = "q"),
                      verbatimTextOutput(outputId = "w"),
                      verbatimTextOutput(outputId = "e"),
                      verbatimTextOutput(outputId = "r"),
                      verbatimTextOutput(outputId = "t"),
                      verbatimTextOutput(outputId = "y"),
                      verbatimTextOutput(outputId = "u")
                      
                      
             ),
             tabPanel("Multiple Regression",
                      tabname="regression",
                      icon=icon("calculator"),
                      verbatimTextOutput(outputId = "qq"),
                      verbatimTextOutput(outputId = "ww"),
                      verbatimTextOutput(outputId = "ee"),
                      verbatimTextOutput(outputId = "rr"),
                      verbatimTextOutput(outputId = "tt")
                    
                      
             )
  ))
# Define server logic 
server <- function(input, output) {
  
  #-------------------REGRESSION FUNCTIONS-------------------#
  
  
  lm_reg <- reactive(
    lm(water_potability$ph ~water_potability$Hardness)
  )
  
  a <- reactive(
    lm(water_potability$ph ~water_potability$Solids)
  )
  s <- reactive(
    lm(water_potability$ph ~water_potability$Chloramines)
  )
  
  d <- reactive(
    lm(water_potability$ph ~water_potability$Sulfate)
  )
  f <- reactive(
    lm(water_potability$ph ~water_potability$Conductivity)
  )
  
 g <- reactive(
    lm(water_potability$ph ~water_potability$Organic_carbon)
  )
  h <- reactive(
    lm(water_potability$ph ~water_potability$Trihalomethanes)
  )
  j <- reactive(
    lm(water_potability$ph ~water_potability$Turbidity)
  )
  
  #-------------------REGRESSION OUTPUT-------------------#
  
  output$RegOut = renderPrint({summary(lm_reg())})
  output$q = renderPrint({summary(a())})
  output$w = renderPrint({summary(s())})
  output$e = renderPrint({summary(d())})
  output$r = renderPrint({summary(f())})
  output$t = renderPrint({summary(g())})
  output$y = renderPrint({summary(h())})
  output$u = renderPrint({summary(j())})
  
  
  ############################
       # Multiple Regression#
  ############################
  aa <- reactive(
    lm(water_potability$ph ~water_potability$Hardness+water_potability$Solids)
  )
  ss <- reactive(
    lm(water_potability$Solids ~water_potability$Sulfate+water_potability$Chloramines)
  )
  dd <- reactive(
    lm(water_potability$ph ~water_potability$Trihalomethanes+water_potability$Hardness)
  )
  ff <- reactive(
    lm(water_potability$Turbidity ~water_potability$Conductivity+water_potability$Organic_carbon)
  )
  #-------------------Multiple REGRESSION OUTPUT-------------------#
  output$qq = renderPrint({summary(aa())})
  output$ww = renderPrint({summary(ss())})
  output$ee = renderPrint({summary(dd())})
  output$rr = renderPrint({summary(ff())})
  
 
}

# Run the application 
shinyApp(ui = ui, server = server)