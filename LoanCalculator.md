Loan Calculator Application
========================================================
author: ashrafmuqlis
date: 19 June 2015

Introduction
========================================================

This is an RStudio shiny application developed as a course project for Coursera's Developing Data Products course in the Data Science Specialization track.
The application developed is a loan calculator.

Course project requirements:
The course project requirements for this application are:

- Some form of input (widget: textbox, radio button, checkbox,etc)  
- Some operation on the ui input in sever.R  
- Some reactive output displayed as a result of server calculations  
- You must also include enough documentation so that a novice user could use your   application.  
- The documentation should be at the Shiny website itself. Do not post to an external link.  

Applications / Widgets
========================================================
The shiny application for this project is a simple interest calculator.  
It includes 4 widgets:

1. numericInput - A field to enter numbers, in this case - the principal amount (in $)
2. sliderInput - A slider bar
3. First slider is to choose the yearly interest rate (in %)
4. Second slider is to choose the number of time periods
5. selectInput - A box with choices to select from, in this case - the type of time period: 6. years, quarters or months
7. actionButton - An Action Button, in this case to provide non-reactive reactivity to refresh and calculate

Input & Output
========================================================
Application - Operations and Output

To prevent undue distraction, the reactivity of the shiny application widgets is controlled by using an actionButton. Based on user inputs, and using the calculation equation, the application displays:
1. Inputs entered by the user  
2. Calculated values  
a. Simple interest calculated  
b. Total amount calculated as principal plus interest  

The loan calculator calculates below:
A = P + I = P(1 + rt) ; R = r * 100
where:
A = Total amount (Principal + Interest), P = Principal amount, I = Interest amount, r = Rate of interest per year, in decimal; r=R/100, t = Time period invested in years/quarters/months

Application Link and Code
========================================================
Try out the application on the RStudio shinyapps.io website:
[https://ashrafmuqlis.shinyapps.io/Shiny_Project](https://ashrafmuqlis.shinyapps.io/Shiny_Project)

To see the code for the application, visit github website:
[https://github.com/ashrafmuqlis/Shiny_Project](https://github.com/ashrafmuqlis/Shiny_Project)

Useful files in repo:

server.R
ui.R
To execute the application and see the code in action, use:
runApp(displayMode = 'showcase')
