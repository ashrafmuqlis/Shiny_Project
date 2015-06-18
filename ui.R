library(shiny)

shinyUI(fluidPage(
     titlePanel("Loan Calculator"),
     sidebarLayout(
          sidebarPanel(
               helpText("This app calculates the estimated total amount of the loan"),            
               br(),            
               numericInput("num_principal",
                            label = h6("Enter the principal amount (in $)"),
                            value = 1000),
               br(),            
               sliderInput("slider_intrate",
                           label = h6("Choose the yearly interest rate (in %)"),
                           min = 0, max = 10, value = 5),
               
               br(),            
               sliderInput("slider_num",
                           label = h6("Choose the number of time periods"),
                           min = 0, max = 120, value = 5),
               selectInput("select_time",
                           label = h6(""),
                           choices = list("Years" = 1,
                                          "Quarters" = 2,
                                          "Months" =3),
                           selected = 1 
               ), 
               br(),
               br(),            
               actionButton("action_Calc", label = "Calculate")        
               ),
          mainPanel(
               tabsetPanel(
                    tabPanel("Output",
                             p(h5("Your entered values:")),
                             textOutput("text_principal"),
                             textOutput("text_intrate"),
                             textOutput("text_num"),
                             textOutput("text_time"),
                             br(),
                             p(h5("Calculated values:")),
                             textOutput("text_int"),
                             textOutput("text_amt")
                    ),
                    tabPanel("Documentation",
                             p(h4("Loan Calculator:")),
                             br(),
                             helpText("This application calculates simple interest
                                      and total amount, i.e. principal plus interest."),
                             HTML("<u><b>Equation for calculation: </b></u>
                                  <br> <br>
                                  <b> A = P + I = P(1 + rt) ; R = r * 100 </b>
                                  <br>
                                  where: <br>
                                  A = Total amount (Principal + Interest) <br>
                                  P = Principal amount <br>
                                  I = Interest amount <br>
                                  r = Rate of interest per year, in decimal; r=R/100 <br>
                                  t = Time period invested in years/quarters/months
                                  ")                
                             )
                             )
                             )
                             )
                             ))