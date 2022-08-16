#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
    # title of the app
    titlePanel("Let's see how textInput widget work in R shiny!"),
    # Sidebar to take user input
    sidebarLayout(
      sidebarPanel(("Enter the personal information"),
      textInput("firstName", "Enter your First Name: ", ""), # user input - First Name
      textInput("lastName", "Enter your Last Name: ", ""), # user input - Last Name
      textInput("age", "Enter your age: ", ""), # user input - Age
      ),
      mainPanel(("Personal Information"),
                tags$h2("Name: "),
                textOutput("myname"), # output - Full Name
                tags$h2("Age: "),
                textOutput("myage") # output - Age
                )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  output$myname <- renderText(
    paste(input$firstName, input$lastName)
  ) 
  output$myage <- renderText(
    input$age
  )
}

# Run the application 
shinyApp(ui = ui, server = server)