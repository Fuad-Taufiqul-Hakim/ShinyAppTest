# install package if required
#install.packages("shiny")

# load the required package
library(shiny)

# Define UI for application that draws a histogram on iris data
ui <- fluidPage(
  titlePanel(title = h4("Visualization of renderPlot() - a histogram", align="center")),
  sidebarLayout(position = "left",
                sidebarPanel(
                  selectInput("var", "1. Select the variable from iris dataset", choices = c("Sepal.Length" = 1, "Sepal.Width" = 2, "Petal.Length" = 3, "Petal.Width" = 4), selected = 1),
                  br(),
                  sliderInput("bins", "2. Select the number of BINs for histogram", min = 5, max = 25, value = 15),
                  br(),
                  radioButtons("color", "3. Select the color of histogram", choices = c("Green", "Red", "Yellow", "Purple"), selected = "Purple"),
                    
                ),
                mainPanel(
                  plotOutput('myhist'),
                )
  )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  output$myhist <- renderPlot({
    colm <- as.numeric(input$var)
    hist(iris[,colm], breaks =seq(0, max(iris[,colm], l = input$bins+1)), col= input$color, main = "Histogram of iris dataset", xlab=names(iris[colm]))
  })
}






# Run the application 
shinyApp(ui = ui, server = server)