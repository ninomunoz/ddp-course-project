library(shiny)

shinyUI(fluidPage(
    headerPanel("How Many Days Old Are You?"),
    
    sidebarPanel(
        p("   To find out how many days old you are, enter your birthday below, then click the 
            'Go' button."),
        br(),
        dateInput('date',
                  label = 'Enter your birthday:'
        ),
        br(),
        actionButton("goButton", "Go!")
    ),
    
    mainPanel(
        verbatimTextOutput("ageText")
    )
))
