pacman::p_load(shinydashboard, shiny)

# read path to data that can be changed for individual computers in the ".path.R" file.
# This file will stay on the local machine and is not shared or updated in the git cloud.
source(file = ".path.R")

# run script that turns limesurvey output into R Dataset
source(file = "correlaid_app/SyntaxAndDataFiles/survey_584752_R_syntax_file.R")


     
## Header ---------------------------------------------------------------------
header      <-  dashboardHeader(title = "Basic tabs")


## Sidebar --------------------------------------------------------------------  
sidebar     <- dashboardSidebar(
          sidebarMenu(
             menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
             menuItem("Widgets", tabName = "widgets", icon = icon("th")),
             menuItem("LisaTest", tabName = "LisaTest", icon = NULL)
             )
          )

  
 ## Body ----------------------------------------------------------------------
body        <- dashboardBody(
    tabItems(
      # First tab content
      tabItem(tabName = "dashboard",
            fluidRow(
                box(plotOutput("plot1", height = 250)),
                
                box(
                  title = "Controls",
                  sliderInput("slider", "Number of observations:", 1, 100, 50)
                )
              )
            ),
      # Second tab content
      tabItem(tabName = "LisaTest",
              fluidRow(
                    box(plotOutput("plot2", height = 250)),
                    
                    box(
                          title = "Controls",
                          sliderInput("slider2", "Number of observations:", 1, 100, 50)
                    )
              )
      ),
      
      # Second tab content
      tabItem(tabName = "widgets",
              h2("Widgets tab content")
      )
    )
  )


# Setup Shiny app UI components -------------------------------------------

ui <- dashboardPage(header, sidebar, body, skin = "black")

server <- function(input, output) {
      
  set.seed(122)
  histdata <- rnorm(500)

  output$plot1 <- renderPlot({
        data <- histdata[seq_len(input$slider)]
        hist(data)})
  
  output$plot2 <- renderPlot({
        plot(cars, type = input$plotType)
  })
  
}

shinyApp(ui, server)
