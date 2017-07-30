Air Quality Plots App
========================================================
author: Sandeep
date: July 29th, 2017
width: 1500
height: 1000

About the app
========================================================

This app is a tool to plot and analyze **airquality** dataset of R datasets package. It provides user the ability to generate one or more Histogram and/or X-Y plots of any variable in the airquality dataset .  

This app consists of 2 panels:  

1. Input panel: This is the sidebar panel on the left hand side. It consists of following 2 groups of checkboxes.  
      * Type of plot: This has 2 choices - Histogram and X-Y plot
      * Variables to plot: This presents a selection choice of one or more variables from the air quality dataset.
2. Output panel: This is the main panel on the right hand side. It has following parts:
      * About the app section that provides documentation on how to use the app.
      * A text message that displays the calculation of number of plots displayed in the main panel.
      * Plot area that will display one or more plots depending on user selection.

Description of Dataset
========================================================

This dataset contains daily air quality measurements in New York, May to September 1973. 

It is a data frame with 154 observations on 6 variables. 

[,1]  Ozone  numeric  Ozone (ppb)   
[,2]  Solar.R  numeric  Solar R (lang)   
[,3]  Wind  numeric  Wind (mph)   
[,4]  Temp  numeric  Temperature (degrees F)   
[,5]  Month  numeric  Month (1--12)   
[,6]  Day  numeric  Day of month (1--31)    

Daily readings of the following air quality values for May 1, 1973 (a Tuesday) to September 30, 1973.
- Ozone: Mean ozone in parts per billion from 1300 to 1500 hours at Roosevelt Island
- Solar.R: Solar radiation in Langleys in the frequency band 4000-7700 Angstroms from 0800 to 1200 hours at Central Park
- Wind: Average wind speed in miles per hour at 0700 and 1000 hours at LaGuardia Airport
- Temp: Maximum daily temperature in degrees Fahrenheit at La Guardia Airport. 

Dataset summary
========================================================


```r
summary(airquality)
```

```
     Ozone           Solar.R           Wind             Temp      
 Min.   :  1.00   Min.   :  7.0   Min.   : 1.700   Min.   :56.00  
 1st Qu.: 18.00   1st Qu.:115.8   1st Qu.: 7.400   1st Qu.:72.00  
 Median : 31.50   Median :205.0   Median : 9.700   Median :79.00  
 Mean   : 42.13   Mean   :185.9   Mean   : 9.958   Mean   :77.88  
 3rd Qu.: 63.25   3rd Qu.:258.8   3rd Qu.:11.500   3rd Qu.:85.00  
 Max.   :168.00   Max.   :334.0   Max.   :20.700   Max.   :97.00  
 NA's   :37       NA's   :7                                       
     Month            Day      
 Min.   :5.000   Min.   : 1.0  
 1st Qu.:6.000   1st Qu.: 8.0  
 Median :7.000   Median :16.0  
 Mean   :6.993   Mean   :15.8  
 3rd Qu.:8.000   3rd Qu.:23.0  
 Max.   :9.000   Max.   :31.0  
                               
```

Link to app
========================================================

https://sandeepbm.shinyapps.io/assignment/
