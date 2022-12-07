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
    plot_ly(data =water_potability,x=~ph,type = "histogram",color = "red")
  })
   output$plot2 <- renderPlotly({
     plot_ly(data = water_potability,x=~Hardness,type = "histogram",color = "red")
   })
   output$plot3 <- renderPlotly({
     plot_ly(data = water_potability,x=~Solids,type = "histogram",color = "red")
   })
   
   output$plot4 <- renderPlotly({
     plot_ly(data = water_potability,x=~Chloramines,type = "histogram",color = "red")
   })
   
   output$plot5 <- renderPlotly({
     plot_ly(data = water_potability,x=~Sulfate,type = "histogram",color = "red")
   })
   
   output$plot6 <- renderPlotly({
     plot_ly(data = water_potability,x=~Conductivity,type = "histogram",color = "red")
   })
   
   output$plot7 <- renderPlotly({
     plot_ly(data = water_potability,x=~Organic_carbon,type = "histogram",color = "red")
   })
   
   output$plot8 <- renderPlotly({
     plot_ly(data = project,x=~Trihalomethanes,type = "histogram",color = "red")
   })
   
   output$plot9 <- renderPlotly({
     plot_ly(data = project,x=~Turbidity,type = "histogram",color = "red")
   })
   output$plot10 <- renderPlotly({
     plot_ly(data = water_potability,x=~Potability,type = "histogram",color = "red")
   })
   
   
   
   
   
 
  #Statistical Analaysis of PH
  
  
  output$mPH <- renderInfoBox({
    infoBox(title = tags$b("mPH"),
            value = mean(water_potability$ph, na.rm = TRUE),
            subtitle = "Mean of PH",fill = T,color = "green"
            )
  })
  output$mH <- renderInfoBox({
    infoBox(title = tags$b("Median"),
            value = median(water_potability$ph, na.rm = TRUE),
            subtitle = "Medain of PH",fill = T,color = "green"
    )
  })
  output$mH1 <- renderInfoBox({
    infoBox(title = tags$b("MODE"),
            value = mode(water_potability$ph),
            subtitle = "MODE of PH",fill = T,color = "green"
    )
  })
  output$mH2 <- renderInfoBox({
    infoBox(title = tags$b("Standard Deviation"),
            value = sd(water_potability$ph, na.rm = TRUE),
            subtitle = "Standard Deviation PH",fill = T,color = "green"
    )
  })
  output$mH3 <- renderInfoBox({
    infoBox(title = tags$b("Variance"),
            value = var(water_potability$ph, na.rm = TRUE),
            subtitle = "Variance of PH",fill = T,color = "green"
    )
  })
  output$mH4 <- renderInfoBox({
    infoBox(title = tags$b("Max"),
            value = max(water_potability$ph),
            subtitle = "MODE of PH",fill = T,color = "green"
    )
  })
  output$mH5 <- renderInfoBox({
    infoBox(title = tags$b("Min"),
            value = min(water_potability$ph, na.rm = TRUE),
            subtitle = "Standard Deviation PH",fill = T,color = "green"
    )
  })
  
  #Statistical Analaysis of Hardness
  output$H <- renderInfoBox({
    infoBox(title = tags$b("mean"),
            value = mean(water_potability$Hardness),
            subtitle = "Mean of Haedness",fill = T,color = "green"
    )
  })
  output$H1 <- renderInfoBox({
    infoBox(title = tags$b("Median"),
            value = median(water_potability$Hardness),
            subtitle = "Medain of Hardness",fill = T,color = "green"
    )
  })
  output$H2 <- renderInfoBox({
    infoBox(title = tags$b("MODE"),
            value = mode(water_potability$Hardness),
            subtitle = "MODE of Hardness",fill = T,color = "green"
    )
  })
  output$H3 <-renderInfoBox({
    infoBox(title = tags$b("Stadard Deviation"),
            value = sd(water_potability$Hardness),
            subtitle = "Standard Deviation of Hardness",color = "green",fill = T
    )
  })
  output$H4 <-renderInfoBox({
    infoBox(title = tags$b("Variance"),
            value = var(water_potability$Hardness),
            subtitle = "Variance of Hardness",color = "green",fill = T
    )
  })
  output$H5 <- renderInfoBox({
    infoBox(title = tags$b("Max"),
            value = max(water_potability$Hardness),
            subtitle = "Max of Hardness",fill = T,color = "green"
    )
  })
  output$H6 <- renderInfoBox({
    infoBox(title = tags$b("Min"),
            value = min(water_potability$Hardness, na.rm = TRUE),
            subtitle = "Min of Hardness",fill = T,color = "green"
    )
  })
  
  
  
  
  #Statistical Analysis of SOlids
  
  output$S <- renderInfoBox({
    infoBox(title = tags$b("mean"),
            value = mean(water_potability$Solids),
            subtitle = "Mean of PH",fill = T,color = "green"
    )
  })
  output$S1 <- renderInfoBox({
    infoBox(title = tags$b("Median"),
            value = median(water_potability$Solids),
            subtitle = "Medain of Solids",fill = T,color = "green"
    )
  })
  output$S2 <- renderInfoBox({
    infoBox(title = tags$b("MODE"),
            value = mode(water_potability$Solids),
            subtitle = "MODE of Solids",fill = T,color = "green"
    )
  })
  output$S3 <-renderInfoBox({
    infoBox(title = tags$b("Stadard Deviation"),
            value = sd(water_potability$Solids),
            subtitle = "Standard Deviation of Solids",color = "green",fill = T
    )
  })
  output$S4 <-renderInfoBox({
    infoBox(title = tags$b("Variance"),
            value = var(water_potability$Solids),
            subtitle = "Variance of SOlids",color = "green",fill = T
    )
  })
  output$S5 <- renderInfoBox({
    infoBox(title = tags$b("Max"),
            value = max(water_potability$Solids),
            subtitle = "Max of Solids",fill = T,color = "green"
    )
  })
  output$S6 <- renderInfoBox({
    infoBox(title = tags$b("Min"),
            value = min(water_potability$Solids, na.rm = TRUE),
            subtitle = "Min of Solids",fill = T,color = "green"
    )
  })
  
  
  
  
  
  
  
  #Statistical Analysis of Chloromines
  
  output$C <- renderInfoBox({
    infoBox(title = tags$b("mean"),
            value = mean(water_potability$Chloramines),
            subtitle = "Mean of Choloramines",fill = T,color = "green"
    )
  })
  output$C1 <- renderInfoBox({
    infoBox(title = tags$b("Median"),
            value = median(water_potability$Chloramines),
            subtitle = "Medain of Choloramines",fill = T,color = "green"
    )
  })
  output$C2 <- renderInfoBox({
    infoBox(title = tags$b("MODE"),
            value = mode(water_potability$Chloramines),
            subtitle = "MODE of Choloramines",fill = T,color = "green"
    )
  })
  output$C3 <-renderInfoBox({
    infoBox(title = tags$b("Stadard Deviation"),
            value = sd(water_potability$Chloramines),
            subtitle = "Standard Deviation of Chloramines",color = "green",fill = T
    )
  })
  output$C4 <-renderInfoBox({
    infoBox(title = tags$b("Variance"),
            value = var(water_potability$Chloramines),
            subtitle = "Variance of Chloramines",color = "green",fill = T
    )
  })
  output$C5 <- renderInfoBox({
    infoBox(title = tags$b("Max"),
            value = max(water_potability$Chloramines),
            subtitle = "MAX of Chloramines",fill = T,color = "green"
    )
  })
  output$C6 <- renderInfoBox({
    infoBox(title = tags$b("Min"),
            value = min(water_potability$Chloramines, na.rm = TRUE),
            subtitle = "MIN of Chloramines",fill = T,color = "green"
    )
  })
  
  
  
  
  #Statistical Analysis of Sulfate
  
  output$SU <- renderInfoBox({
    infoBox(title = tags$b("mean"),
            value = mean(water_potability$Sulfate, na.rm = TRUE),
            subtitle = "Mean of Sulfate",fill = T,color = "green"
    )
  })
  output$SU1 <- renderInfoBox({
    infoBox(title = tags$b("Median"),
            value = median(water_potability$Sulfate, na.rm = TRUE),
            subtitle = "Medain of Sulfate",fill = T,color = "green"
    )
  })
  output$SU2 <- renderInfoBox({
    infoBox(title = tags$b("MODE"),
            value = mode(water_potability$Sulfate),
            subtitle = "MODE of Sulfate",fill = T,color = "green"
    )
  })
  output$SU3 <-renderInfoBox({
    infoBox(title = tags$b("Stadard Deviation"),
            value = sd(water_potability$Sulfate, na.rm = TRUE),
            subtitle = "Standard Deviation of Sulfate",color = "green",fill = T
    )
  })
  output$SU4 <-renderInfoBox({
    infoBox(title = tags$b("Variance"),
            value = var(water_potability$Sulfate, na.rm = TRUE),
            subtitle = "Variance of SUlfate",color = "green",fill = T
    )
  })
  output$SU5 <- renderInfoBox({
    infoBox(title = tags$b("Max"),
            value = max(water_potability$Sulfate),
            subtitle = "Max of Sulfate",fill = T,color = "green"
    )
  })
  output$SU6 <- renderInfoBox({
    infoBox(title = tags$b("Min"),
            value = min(water_potability$Sulfate, na.rm = TRUE),
            subtitle = "Min of Sulfate",fill = T,color = "green"
    )
  })
  
  
  #Statistical Analysis of Conductivity
  
  output$CU <- renderInfoBox({
    infoBox(title = tags$b("mean"),
            value = mean(water_potability$Conductivity),
            subtitle = "Mean of Conductivity",fill = T,color = "green"
    )
  })
  output$CU1 <- renderInfoBox({
    infoBox(title = tags$b("Median"),
            value = median(water_potability$Conductivity),
            subtitle = "Medain of Conductivity",fill = T,color = "green"
    )
  })
  output$CU2 <- renderInfoBox({
    infoBox(title = tags$b("MODE"),
            value = mode(water_potability$Conductivity),
            subtitle = "MODE of Conductivity",fill = T,color = "green"
    )
  })
  
  output$CU3 <-renderInfoBox({
    infoBox(title = tags$b("Stadard Deviation"),
            value = sd(water_potability$Conductivity),
            subtitle = "Standard Deviation of Conductivity",color = "green",fill = T
    )
  })
  output$CU4 <-renderInfoBox({
    infoBox(title = tags$b("Variance"),
            value = var(water_potability$Conductivity),
            subtitle = "Variance of COnductvity",color = "green",fill = T
    )
  })
  output$CU5 <- renderInfoBox({
    infoBox(title = tags$b("Max"),
            value = max(water_potability$Conductivity),
            subtitle = "Max of Conductivity",fill = T,color = "green"
    )
  })
  output$CU6 <- renderInfoBox({
    infoBox(title = tags$b("Min"),
            value = min(water_potability$Conductivity, na.rm = TRUE),
            subtitle = "MIX of Conductivity",fill = T,color = "green"
    )
  })
  
  
  #Statistical Analysis of Organic Carbon
  
  output$O <- renderInfoBox({
    infoBox(title = tags$b("mean"),
            value = mean(water_potability$Organic_carbon),
            subtitle = "Mean of Organic Carbon",fill = T,color = "green"
    )
  })
  output$O1 <- renderInfoBox({
    infoBox(title = tags$b("Median"),
            value = median(water_potability$Organic_carbon),
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
            value = sd(water_potability$Organic_carbon),
            subtitle = "Standard Deviation of Organic Carban",color = "green",fill = T
    )
  })
  output$O4 <-renderInfoBox({
    infoBox(title = tags$b("Variance"),
            value = var(water_potability$Organic_carbon),
            subtitle = "Variance of organic_carbon",color = "green",fill = T
    )
  })
  output$O5 <- renderInfoBox({
    infoBox(title = tags$b("Max"),
            value = max(water_potability$Organic_carbon),
            subtitle = "MAX of Organic_carbon",fill = T,color = "green"
    )
  })
  output$O6 <- renderInfoBox({
    infoBox(title = tags$b("Min"),
            value = min(water_potability$Organic_carbon, na.rm = TRUE),
            subtitle = "MAX of Organic_carbon",fill = T,color = "green"
    )
  })
  
  
  #Statistical Analysis of Trihalomethene
  
  output$T <- renderInfoBox({
    infoBox(title = tags$b("mean"),
            value = mean(water_potability$Trihalomethanes, na.rm = TRUE),
            subtitle = "Mean of Trihalomethanes",fill = T,color = "green"
    )
  })
  output$T1 <- renderInfoBox({
    infoBox(title = tags$b("Median"),
            value = median(water_potability$Trihalomethanes, na.rm = TRUE),
            subtitle = "Medain of Trihalomethanes",fill = T,color = "green"
    )
  })
  output$T2 <- renderInfoBox({
    infoBox(title = tags$b("MODE"),
            value = mode(water_potability$Trihalomethanes),
            subtitle = "MODE of Trihalomethanes",fill = T,color = "green"
    )
    
  })
  
  output$T3 <-renderInfoBox({
    infoBox(title = tags$b("Stadard Deviation"),
            value = sd(water_potability$Trihalomethanes, na.rm = TRUE),
            subtitle = "Standard Deviation of Trihalometanes",color = "green",fill = T
    )
  })
  output$T4 <-renderInfoBox({
    infoBox(title = tags$b("Variance"),
            value = var(water_potability$Trihalomethanes, na.rm = TRUE),
            subtitle = "Variance of Trihalomethanes",color = "green",fill = T
    )
  })
  output$T5 <- renderInfoBox({
    infoBox(title = tags$b("Max"),
            value = max(water_potability$Trihalomethanes),
            subtitle = "Max of Trihalomethanes",fill = T,color = "green"
    )
  })
  output$T6 <- renderInfoBox({
    infoBox(title = tags$b("Min"),
            value = min(water_potability$Trihalomethanes, na.rm = TRUE),
            subtitle = "Min of Trihalomethanes",fill = T,color = "green"
    )
  })
  
  
  #Statistical Analysis of Turbidity
  
  output$TU <- renderInfoBox({
    infoBox(title = tags$b("mean"),
            value = mean(water_potability$Turbidity),
            subtitle = "Mean of Turbidity",fill = T,color = "green"
    )
  })
  output$TU1 <- renderInfoBox({
    infoBox(title = tags$b("Median"),
            value = median(water_potability$Turbidity),
            subtitle = "Medain of Turbidity",fill = T,color = "green"
    )
  })
  output$TU2 <- renderInfoBox({
    infoBox(title = tags$b("MODE"),
            value = mode(water_potability$Turbidity),
            subtitle = "MODE of Turbidity",fill = T,color = "green"
    )
  })
  output$TU3 <-renderInfoBox({
    infoBox(title = tags$b("Stadard Deviation"),
            value = sd(water_potability$Turbidity),
            subtitle = "Standard Deviation of Turbidity",color = "green",fill = T
    )
  })
  output$TU4 <-renderInfoBox({
    infoBox(title = tags$b("Variance"),
            value = var(water_potability$Turbidity),
            subtitle = "Variance of Turbidity",color = "green",fill = T
    )
  })
  output$TU5 <- renderInfoBox({
    infoBox(title = tags$b("Max"),
            value = max(water_potability$Turbidity),
            subtitle = "Max of Turbiduty",fill = T,color = "green"
    )
  })
  output$TU6 <- renderInfoBox({
    infoBox(title = tags$b("Min"),
            value = min(water_potability$Turbidity),
            subtitle = "Min Turbidity",fill = T,color = "green"
    )
  })
  
  
  
  # Normal Distribution of Water potability PH
  output$P <- renderValueBox({
    valueBox(
      value = pnorm(q=7,mean(water_potability$ph,na.rm = TRUE),sd(water_potability$ph,na.rm = TRUE)),subtitle = "PNORM of PH for q=7"
    )
  })
  output$Q <- renderValueBox({
    valueBox(
      value = qnorm(p=0.40,mean(water_potability$ph,na.rm = TRUE),sd(water_potability$ph,na.rm = TRUE)),subtitle = "QNORM of PH for p=0.40"
    )
  })
  output$D <- renderValueBox({
    valueBox(
      #for x=7.2
      value = dnorm(x=7.2,mean(water_potability$ph,na.rm = TRUE),sd(water_potability$ph,na.rm = TRUE)),subtitle = "DNORM of Hardness and for x=7.2 for x=7.2"
    )
  })
  # Normal Distribution of Water potability Hardness
  output$P1 <- renderValueBox({
    valueBox(
      value = pnorm(q=197,mean(water_potability$Hardness,na.rm = TRUE),sd(water_potability$ph,na.rm = TRUE)),subtitle = "PNORM of hardness for q=197"
    )
  })
  output$Q1 <- renderValueBox({
    valueBox(
      value = qnorm(p=0.4,mean(water_potability$Hardness,na.rm = TRUE),sd(water_potability$ph,na.rm = TRUE)),subtitle = "QNORM of Hardness for p=0.4"
    )
  })
  output$D1 <- renderValueBox({
    valueBox(
      #for x=7.2
      value = dnorm(x=189.4,mean(water_potability$Hardness,na.rm = TRUE),sd(water_potability$ph,na.rm = TRUE)),subtitle = "DNORM of Hardness and for x=189.4"
    )
  })
  # Normal Distribution of Water potability Solids
  output$P2 <- renderValueBox({
    valueBox(
      value = pnorm(q=20927.8336,mean(water_potability$Solids,na.rm = TRUE),sd(water_potability$Solids,na.rm = TRUE)),subtitle = "PNORM of Solids for q=20927.8336"
    )
  })
  output$Q2 <- renderValueBox({
    valueBox(
      value = qnorm(p=0.3,mean(water_potability$Solids,na.rm = TRUE),sd(water_potability$Solids,na.rm = TRUE)),subtitle = "QNORM of Solids for p=0.3"
    )
  })
  output$D2 <- renderValueBox({
    valueBox(
      
      value = dnorm(x=705.02 ,mean(water_potability$Solids,na.rm = TRUE),sd(water_potability$Solids,na.rm = TRUE)),subtitle = "DNORM of Solids and for x=705.02 "
    )
  })
  # Normal Distribution of Water potability Chloramines
  output$P3 <- renderValueBox({
    valueBox(
      value = pnorm(q=7.130,mean(water_potability$Chloramines,na.rm = TRUE),sd(water_potability$Chloramines,na.rm = TRUE)),subtitle = "PNORM of chloramines for q=7.10"
    )
  })
  output$Q3 <- renderValueBox({
    valueBox(
      value = qnorm(p=0.03,mean(water_potability$Chloramines,na.rm = TRUE),sd(water_potability$Chloramines,na.rm = TRUE)),subtitle = "QNORM of chloramines for p=0.03"
    )
  })
  output$D3 <- renderValueBox({
    valueBox(
      
      value = dnorm(x=5.98 ,mean(water_potability$Chloramines,na.rm = TRUE),sd(water_potability$Chloramines,na.rm = TRUE)),subtitle = "DNORM of chloramines and for x=5.98 "
    )
  })
  # Normal Distribution of Water potability sulfate
  output$P4 <- renderValueBox({
    valueBox(
      value = pnorm(q=332.7758,mean(water_potability$Sulfate,na.rm = TRUE),sd(water_potability$Sulfate,na.rm = TRUE)),subtitle = "PNORM of sulfate for q=332.7758"
    )
  })
  output$Q4 <- renderValueBox({
    valueBox(
      value = qnorm(p=0.46,mean(water_potability$Sulfate,na.rm = TRUE),sd(water_potability$Sulfate,na.rm = TRUE)),subtitle = "QNORM of sulfate for p=0.46"
    )
  })
  output$D4 <- renderValueBox({
    valueBox(
      
      value = dnorm(x=313.92 ,mean(water_potability$Sulfate,na.rm = TRUE),sd(water_potability$Sulfate,na.rm = TRUE)),subtitle = "DNORM of sulfate and for x=313.92 "
    )
  })
  # Normal Distribution of Water potability Conductivity
  output$P5 <- renderValueBox({
    valueBox(
      value = pnorm(q= 421.8850,mean(water_potability$Conductivity,na.rm = TRUE),sd(water_potability$Conductivity,na.rm = TRUE)),subtitle = "PNORM of Conductivity for q= 421.8850"
    )
  })
  output$Q5 <- renderValueBox({
    valueBox(
      value = qnorm(p=0.696,mean(water_potability$Conductivity,na.rm = TRUE),sd(water_potability$Conductivity,na.rm = TRUE)),subtitle = "QNORM of Conductivity for p=0.696"
    )
  })
  output$D5 <- renderValueBox({
    valueBox(
      
      value = dnorm(x=312.048 ,mean(water_potability$Conductivity,na.rm = TRUE),sd(water_potability$Conductivity,na.rm = TRUE)),subtitle = "DNORM of Conductivity and for x=312.048 "
    )
  })
  # Normal Distribution of Water potability Organic carbon
  output$P6 <- renderValueBox({
    valueBox(
      value = pnorm(q=  14.21834,mean(water_potability$Organic_carbon,na.rm = TRUE),sd(water_potability$Organic_carbon,na.rm = TRUE)),subtitle = "PNORM of Organic_carbon for q=  14.21834"
    )
  })
  output$Q6 <- renderValueBox({
    valueBox(
      value = qnorm(p=0.54,mean(water_potability$Organic_carbon,na.rm = TRUE),sd(water_potability$Organic_carbon,na.rm = TRUE)),subtitle = "QNORM of Organic_carbon for p=0.54"
    )
  })
  output$D6 <- renderValueBox({
    valueBox(
      
      value = dnorm(x=13.54 ,mean(water_potability$Organic_carbon,na.rm = TRUE),sd(water_potability$Organic_carbon,na.rm = TRUE)),subtitle = "DNORM of Organic_carbon and for x=13.54 "
    )
  })
  # Normal Distribution of Water potability Trihelomethane
  output$P7 <- renderValueBox({
    valueBox(
      value = pnorm(q=  66.39689,mean(water_potability$Trihalomethanes,na.rm = TRUE),sd(water_potability$Trihalomethanes,na.rm = TRUE)),subtitle = "PNORM of Trihalomethanes for q=  66.39689"
    )
  })
  output$Q7 <- renderValueBox({
    valueBox(
      value = qnorm(p=0.48,mean(water_potability$Trihalomethanes,na.rm = TRUE),sd(water_potability$Trihalomethanes,na.rm = TRUE)),subtitle = "QNORM of Trihalomethanes for p=0.48"
    )
  })
  output$D7 <- renderValueBox({
    valueBox(
      
      value = dnorm(x=61.218 ,mean(water_potability$Trihalomethanes,na.rm = TRUE),sd(water_potability$Trihalomethanes,na.rm = TRUE)),subtitle = "DNORM of Trihalomethanes and for x=61.218 "
    )
  })
  
  # Normal Distribution of Water potability Turbidity
  output$P6 <- renderValueBox({
    valueBox(
      value = pnorm(q=   66.39689,mean(water_potability$Turbidity,na.rm = TRUE),sd(water_potability$Turbidity,na.rm = TRUE)),subtitle = "PNORM of Turbidity for q=   66.39689"
    )
  })
  output$Q6 <- renderValueBox({
    valueBox(
      value = qnorm(p=0.23,mean(water_potability$Turbidity,na.rm = TRUE),sd(water_potability$Turbidity,na.rm = TRUE)),subtitle = "QNORM of Turbidity for p=0.23"
    )
  })
  output$D6 <- renderValueBox({
    valueBox(
      
      value = dnorm(x=3.98 ,mean(water_potability$Turbidity,na.rm = TRUE),sd(water_potability$Turbidity,na.rm = TRUE)),subtitle = "DNORM of Turbidity and for x=3.98 "
    )
  })
  
})
