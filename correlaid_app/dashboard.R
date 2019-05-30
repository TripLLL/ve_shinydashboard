pacman::p_load(shinydashboard, shiny)

# read path to data that can be changed for individual computers in the ".path.R" file.
# This file will stay on the local machine and is not shared or updated in the git cloud.
source(file = ".path.R")

# run script that turns limesurvey output into R Dataset
source(file = paste(datapath, "survey_584752_R_syntax_file.R", sep = "/"))

source(file = "tools.R")
     
## Header ---------------------------------------------------------------------
header      <-  dashboardHeader(title = "Dashboard", titleWidth = 150)


## Sidebar --------------------------------------------------------------------  
sidebar     <- dashboardSidebar(
          width = 150,
          sidebarMenu(
             menuItem("Univariate", tabName = "unitab", icon = icon("chart-bar")),
             menuItem("Bivariate", tabName = "bitab", icon = icon("table")),
             menuItem("Free Text", tabName = "txtab", icon = icon("pen-nib"))
             )
          )

  
 ## Body ----------------------------------------------------------------------
body        <- dashboardBody(
    tabItems(
      # First tab content
      tabItem(tabName = "unitab",
            h1("Univariate Analysis"),
            fluidRow(
                box(
                  title = "Controls",
                  selectInput(inputId = 'select_variable', 
                              label = 'Select Variable', 
                              choices = colnames(data), 
                              selected = NULL)
                ),
              h2('Data'),
                      box(width = 12,
                          dataTableOutput(outputId = 'data')
                      ),
                      downloadButton(outputId = 'download_data', label = 'Download')
          )
      ),
      # Second tab content
      tabItem(tabName = "bitab",
              h2("Bivariate Analysis"),
              fluidRow(
                    box(plotOutput("plot2", height = 250)),
                    
                    box(
                          title = "Controls",
                          sliderInput("slider2", "Number of observations:", 1, 100, 50)
                    )
              )
      ),
      
      # Second tab content
      tabItem(tabName = "txtab",
              h2("Free-text analysis")
      )
    )
  )


# Setup Shiny app UI components -------------------------------------------

ui <- dashboardPage(header, sidebar, body, skin = "black")

server <- function(input, output) {
  filter.data <- reactive({
    data %>% 
      select(id, starts_with(input$selected_variable), -ends_with("other"))
  })
  
  output$data <- renderDataTable(
    filter.data(), 
    options = list(pageLength = 10)
  )
  
  output$download_data <- downloadHandler(
    
    filename = function() {
      paste0('data_export_',format(Sys.time(), "%Y%m%d_%H%M%S"),'.csv')
    },
    
    content = function(file) {
      write_csv(x = filter.data(), path = file, na = '')
    }
  )
  
}

shinyApp(ui, server)
