
library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Air Quality Plots App"),
  
  sidebarLayout(
    sidebarPanel(
       checkboxGroupInput("plots","Type of plot",
                             c("Histogram","X-Y Plot"),selected="Histogram"),   
       checkboxGroupInput("vars","Variables to plot",
                          c("Ozone","Temp","Solar.R",
                            "Wind","Month","Day"),selected="Ozone")
    ,width=2),
    
    mainPanel(
       h3("About the app"),
       em("The purpose of this app is to produce Histogram and/or X-Y plot of variables from airquality dataset of R datasets package."),
       em("Please select one or more plot types and variables from the check boxes on the left hand side panel in order to display the plots."),
       hr(),
       uiOutput("noplot"),
       plotOutput("displot1"),
       plotOutput("displot2")
    )
  )
))

