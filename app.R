server <- function(input, output) {
  output$distPlot <- renderPlot({
    hist(rnorm(input$obs), col = 'darkgray', border = 'white')
  })
  
  output$output_text <- renderText({
    paste("Hello from Domino Airlines")
  })
  
}

ui <- fluidPage(sidebarLayout(sidebarPanel(
  sliderInput(
    "obs", "Number of observations:", min = 10, max = 500, value = 100
  )
),

mainPanel(textOutput("output_text"))))

shinyApp(ui = ui, server = server)
