#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that takes selection input
ui <- fluidPage(

    # Application title
    titlePanel("Here is the selectInput widget in R shiny!"),

    # Sidebar with a selection input
    sidebarLayout(
        sidebarPanel(
            selectInput("stateNames",
                        "Select the states: ",
                        c("California", "Florida", "Texas", "New York", "Arizona"),
                        selected = "Texas") # input > state from drop down list
        ),

        # Show user state
        mainPanel(
          tags$h2("User selection is: "),
           textOutput("state") # output > state
        )
    )
)

# Define server logic required to render user state
server <- function(input, output) {

    output$state <- renderText(
      input$stateNames
    )
}

# Run the application 
shinyApp(ui = ui, server = server)
