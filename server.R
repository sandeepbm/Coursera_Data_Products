
library(shiny)

shinyServer(function(input, output) {
      lenvars <- reactive({length(input$vars)})
      lenplots <- reactive({length(input$plots)})
      output$noplot <- renderUI({
            if (lenvars()==0 & lenplots()==0)
                  h3("Please select at least one plot & variable")            
            else if (lenvars()==0)
                  h3("Please select at least one variable")            
            else if (lenplots()==0)
                  h3("Please select at least one plot")
      })
      output$displot1 <- renderPlot({
            if (lenvars()>0)
                  par(mfrow=c(lenvars(),1),mar=c(5,4,1,1))
            if (any(input$plots=="Histogram"))
                  for (i in input$vars)
                        hist(airquality[,i],xlab=i,main="")
            else if (any(input$plots=="X-Y Plot")){
                  df <- airquality[,input$vars]
                  if (lenvars()==1)
                        plot(df,ylab=input$vars)
                  else if (lenvars()>1)
                        plot(df)    
            }
      })
      output$displot2 <- renderPlot({
            df <- airquality[,input$vars]
            if (any(input$plots=="X-Y Plot") & lenplots()>1)
                  if (lenvars()==1)
                        plot(df,ylab=input$vars)
                  else if (lenvars()>1)
                        plot(df)    
      })
})
