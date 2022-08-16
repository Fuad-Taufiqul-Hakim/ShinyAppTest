#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that output user input from slider
ui <- fluidPage(

    # Application title
    titlePanel("Slider input widget in shiny!"),

    # Sidebar with a slider input for number 
    sidebarLayout(
        sidebarPanel(
            sliderInput("slide",
                        "Select the value from slider:",
                        min = 0,
                        max = 5,
                        value = 2,
                        step = 0.2) # slider with 0 to 5 value and interval of 0.2
        ),

        # Show the user input
        mainPanel(
          tags$h3("User selection is: "),
          textOutput("out") # output of the user selection
        )
    )
)

# Define server logic required to output the slider input
server <- function(input, output) {

    output$out <- renderText(
      paste(">>>>:  ", input$slide) # rendering user input
    )
}

# Run the application 
shinyApp(ui = ui, server = server)
