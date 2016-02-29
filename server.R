library(shiny)

shinyServer(function(input, output, session) {

    ntext <- eventReactive(input$goButton, {
        paste("You are ", as.character(Sys.Date() - input$date), " days old!")
    })
    
    output$ageText <- renderText({
        ntext()
    })
})