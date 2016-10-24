library(shiny)

# Laad Data
Advertising <- read.csv("Advertising.csv")
Advertising <- Advertising[,2:5]

explainatory_variable <- names(Advertising)[1:3]

ui <- fluidPage(
    headerPanel('Analysis on Advertising Dataset'),
    sidebarPanel(
        selectInput('xcol', 'Explainatory Variable', explainatory_variable)
    ),
    mainPanel(
        plotOutput('scatterplot')
    )
)

server <- function(input, output) {
    
    selectedData <- reactive({
        Advertising[, c(input$xcol, Sales)]
    })
    
    output$scatterplot <- renderPlot({
        plot(Advertising[, input$xcol],
             Advertising$Sales,
             xlab = input$xcol,
             ylab = "Sales",
             col = "red",
             pch = 20, cex = 1)
    })
}

shinyApp(ui = ui, server = server)
