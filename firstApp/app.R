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
  titlePanel(title = "This the first shiny app, hello!"),
  sidebarLayout(position = "right",
    sidebarPanel(h3("This is side bar panel"),
                 h4("widget4"),
                 h5("widget5")
                 ),
    mainPanel(h4("This is main panel, output will be displayed here :)."),
              h5("This is output five")
              )
  )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    
}

# Run the application 
shinyApp(ui = ui, server = server)
