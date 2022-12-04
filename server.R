library(shiny)
library(shinydashboard)
library(plotly)
library(datasets)



shinyServer(function(input,output,session){
  ##for display water_potability dataset
  output$mydatatable <- renderDataTable({
    project
  })
  output$plot1 <- renderPlotly({
    plot_ly(data =project,x=~ph,type = "histogram",color = "red")
  })
   output$plot2 <- renderPlotly({
     plot_ly(data = project,x=~Hardness,type = "histogram",color = "red")
   })
   output$plot3 <- renderPlotly({
     plot_ly(data = project,x=~Solids,type = "histogram",color = "red")
   })
   
   output$plot4 <- renderPlotly({
     plot_ly(data = project,x=~Chloramines,type = "histogram",color = "red")
   })
   
   output$plot5 <- renderPlotly({
     plot_ly(data = project,x=~Sulfate,type = "histogram",color = "red")
   })
   
   output$plot6 <- renderPlotly({
     plot_ly(data = project,x=~Conductivity,type = "histogram",color = "red")
   })
   
   output$plot7 <- renderPlotly({
     plot_ly(data = project,x=~Organic_carbon,type = "histogram",color = "red")
   })
   
   output$plot8 <- renderPlotly({
     plot_ly(data = project,x=~Trihalomethanes,type = "histogram",color = "red")
   })
   
   output$plot9 <- renderPlotly({
     plot_ly(data = project,x=~Turbidity,type = "histogram",color = "red")
   })
   output$plot10 <- renderPlotly({
     plot_ly(data = project,x=~Potability,type = "histogram",color = "red")
   })
   
   
   
   
   
 
  #Statistical Analaysis of PH
  
  
  output$mPH <- renderInfoBox({
    infoBox(title = tags$b("mPH"),
            value = mean(project$ph),
            subtitle = "Mean of PH",fill = T,color = "green"
            )
  })
  output$mH <- renderInfoBox({
    infoBox(title = tags$b("Median"),
            value = median(project$ph),
            subtitle = "Medain of PH",fill = T,color = "green"
    )
  })
  output$mH1 <- renderInfoBox({
    infoBox(title = tags$b("MODE"),
            value = mode(project$ph),
            subtitle = "MODE of PH",fill = T,color = "green"
    )
  })
  output$mH2 <- renderInfoBox({
    infoBox(title = tags$b("Median"),
            value = sd(project$ph),
            subtitle = "Standard Deviation PH",fill = T,color = "green"
    )
  })
  output$mH3 <- renderInfoBox({
    infoBox(title = tags$b("MODE"),
            value = var(project$ph),
            subtitle = "Variance of PH",fill = T,color = "green"
    )
  })
  
  
  #Statistical Analaysis of Hardness
  output$H <- renderInfoBox({
    infoBox(title = tags$b("mean"),
            value = mean(project$Hardness),
            subtitle = "Mean of Haedness",fill = T,color = "green"
    )
  })
  output$H1 <- renderInfoBox({
    infoBox(title = tags$b("Median"),
            value = median(project$Hardness),
            subtitle = "Medain of Hardness",fill = T,color = "green"
    )
  })
  output$H2 <- renderInfoBox({
    infoBox(title = tags$b("MODE"),
            value = mode(project$Hardness),
            subtitle = "MODE of Hardness",fill = T,color = "green"
    )
  })
  output$H3 <-renderInfoBox({
    infoBox(title = tags$b("Stadard Deviation"),
            value = sd(project$Hardness),
            subtitle = "Standard Deviation of Hardness",color = "green",fill = T
    )
  })
  output$H4 <-renderInfoBox({
    infoBox(title = tags$b("Variance"),
            value = var(project$Hardness),
            subtitle = "Variance of Hardness",color = "green",fill = T
    )
  })
  
  
  
  
  #Statistical Analysis of SOlids
  
  output$S <- renderInfoBox({
    infoBox(title = tags$b("mean"),
            value = mean(project$Solids),
            subtitle = "Mean of PH",fill = T,color = "green"
    )
  })
  output$S1 <- renderInfoBox({
    infoBox(title = tags$b("Median"),
            value = median(project$Solids),
            subtitle = "Medain of Solids",fill = T,color = "green"
    )
  })
  output$S2 <- renderInfoBox({
    infoBox(title = tags$b("MODE"),
            value = mode(project$Solids),
            subtitle = "MODE of Solids",fill = T,color = "green"
    )
  })
  output$S3 <-renderInfoBox({
    infoBox(title = tags$b("Stadard Deviation"),
            value = sd(project$Solids),
            subtitle = "Standard Deviation of Solids",color = "green",fill = T
    )
  })
  output$S4 <-renderInfoBox({
    infoBox(title = tags$b("Variance"),
            value = var(project$Solids),
            subtitle = "Variance of SOlids",color = "green",fill = T
    )
  })
  
  
  
  
  
  
  
  #Statistical Analysis of Chloromines
  
  output$C <- renderInfoBox({
    infoBox(title = tags$b("mean"),
            value = mean(project$Chloramines),
            subtitle = "Mean of Choloramines",fill = T,color = "green"
    )
  })
  output$C1 <- renderInfoBox({
    infoBox(title = tags$b("Median"),
            value = median(project$Chloramines),
            subtitle = "Medain of Choloramines",fill = T,color = "green"
    )
  })
  output$C2 <- renderInfoBox({
    infoBox(title = tags$b("MODE"),
            value = mode(project$Chloramines),
            subtitle = "MODE of Choloramines",fill = T,color = "green"
    )
  })
  output$C3 <-renderInfoBox({
    infoBox(title = tags$b("Stadard Deviation"),
            value = sd(project$Chloramines),
            subtitle = "Standard Deviation of Chloramines",color = "green",fill = T
    )
  })
  output$C4 <-renderInfoBox({
    infoBox(title = tags$b("Variance"),
            value = var(project$Chloramines),
            subtitle = "Variance of Chloramines",color = "green",fill = T
    )
  })
  
  
  
  
  #Statistical Analysis of Sulfate
  
  output$SU <- renderInfoBox({
    infoBox(title = tags$b("mean"),
            value = mean(project$Sulfate),
            subtitle = "Mean of Sulfate",fill = T,color = "green"
    )
  })
  output$SU1 <- renderInfoBox({
    infoBox(title = tags$b("Median"),
            value = median(project$Sulfate),
            subtitle = "Medain of Sulfate",fill = T,color = "green"
    )
  })
  output$SU2 <- renderInfoBox({
    infoBox(title = tags$b("MODE"),
            value = mode(project$Sulfate),
            subtitle = "MODE of Sulfate",fill = T,color = "green"
    )
  })
  output$SU3 <-renderInfoBox({
    infoBox(title = tags$b("Stadard Deviation"),
            value = sd(project$Sulfate),
            subtitle = "Standard Deviation of Sulfate",color = "green",fill = T
    )
  })
  output$SU4 <-renderInfoBox({
    infoBox(title = tags$b("Variance"),
            value = var(project$Sulfate),
            subtitle = "Variance of SUlfate",color = "green",fill = T
    )
  })
  
  
  
  #Statistical Analysis of Conductivity
  
  output$CU <- renderInfoBox({
    infoBox(title = tags$b("mean"),
            value = mean(project$Conductivity),
            subtitle = "Mean of Conductivity",fill = T,color = "green"
    )
  })
  output$CU <- renderInfoBox({
    infoBox(title = tags$b("Median"),
            value = median(project$Conductivity),
            subtitle = "Medain of Conductivity",fill = T,color = "green"
    )
  })
  output$CU2 <- renderInfoBox({
    infoBox(title = tags$b("MODE"),
            value = mode(project$Conductivity),
            subtitle = "MODE of Conductivity",fill = T,color = "green"
    )
  })
  
  output$CU3 <-renderInfoBox({
    infoBox(title = tags$b("Stadard Deviation"),
            value = sd(project$Conductivity),
            subtitle = "Standard Deviation of Conductivity",color = "green",fill = T
    )
  })
  output$CU4 <-renderInfoBox({
    infoBox(title = tags$b("Variance"),
            value = var(project$Conductivity),
            subtitle = "Variance of COnductvity",color = "green",fill = T
    )
  })
  
  
  #Statistical Analysis of Organic Carbon
  
  output$O <- renderInfoBox({
    infoBox(title = tags$b("mean"),
            value = mean(project$Organic_carbon),
            subtitle = "Mean of Organic Carbon",fill = T,color = "green"
    )
  })
  output$O1 <- renderInfoBox({
    infoBox(title = tags$b("Median"),
            value = median(project$Organic_carbon),
            subtitle = "Medain of Organic Carbon",fill = T,color = "green"
    )
  })
  output$O2 <- renderInfoBox({
    infoBox(title = tags$b("MODE"),
            value = mode(project$Organic_carbon),
            subtitle = "MODE of Organic Carbon",fill = T,color = "green"
    )
  })
  
  output$O3 <-renderInfoBox({
    infoBox(title = tags$b("Stadard Deviation"),
            value = sd(project$Organic_carbon),
            subtitle = "Standard Deviation of Organic Carban",color = "green",fill = T
    )
  })
  output$O4 <-renderInfoBox({
    infoBox(title = tags$b("Variance"),
            value = var(project$Organic_carbon),
            subtitle = "Variance of organic_carbon",color = "green",fill = T
    )
  })
  
  
  #Statistical Analysis of Trihalomethene
  
  output$T <- renderInfoBox({
    infoBox(title = tags$b("mean"),
            value = mean(project$Trihalomethanes),
            subtitle = "Mean of Trihalomethanes",fill = T,color = "green"
    )
  })
  output$T1 <- renderInfoBox({
    infoBox(title = tags$b("Median"),
            value = median(project$Trihalomethanes),
            subtitle = "Medain of Trihalomethanes",fill = T,color = "green"
    )
  })
  output$T2 <- renderInfoBox({
    infoBox(title = tags$b("MODE"),
            value = mode(project$Trihalomethanes),
            subtitle = "MODE of Trihalomethanes",fill = T,color = "green"
    )
    
  })
  
  output$T3 <-renderInfoBox({
    infoBox(title = tags$b("Stadard Deviation"),
            value = sd(project$Trihalomethanes),
            subtitle = "Standard Deviation of Trihalometanes",color = "green",fill = T
    )
  })
  output$T4 <-renderInfoBox({
    infoBox(title = tags$b("Variance"),
            value = var(project$Trihalomethanes),
            subtitle = "Variance of Trihalomethanes",color = "green",fill = T
    )
  })
  
  
  #Statistical Analysis of Turbidity
  
  output$TU <- renderInfoBox({
    infoBox(title = tags$b("mean"),
            value = mean(project$Turbidity),
            subtitle = "Mean of Turbidity",fill = T,color = "green"
    )
  })
  output$TU1 <- renderInfoBox({
    infoBox(title = tags$b("Median"),
            value = median(project$Turbidity),
            subtitle = "Medain of Turbidity",fill = T,color = "green"
    )
  })
  output$TU2 <- renderInfoBox({
    infoBox(title = tags$b("MODE"),
            value = mode(project$Turbidity),
            subtitle = "MODE of Turbidity",fill = T,color = "green"
    )
  })
  output$TU3 <-renderInfoBox({
    infoBox(title = tags$b("Stadard Deviation"),
            value = sd(project$Turbidity),
            subtitle = "Standard Deviation of Turbidity",color = "green",fill = T
    )
  })
  output$TU4 <-renderInfoBox({
    infoBox(title = tags$b("Variance"),
            value = var(project$Turbidity),
            subtitle = "Variance of Turbidity",color = "green",fill = T
    )
  })
  
})
