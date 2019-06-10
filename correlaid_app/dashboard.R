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
                  title = "Filters",
                  # selectizeInput(inputId = 'selected_analysis', 
                  #                label = 'Select Analysis', 
                  #                choices = c("bar_chart", "freetext"), 
                  #                selected = "bar_chart", multiple = FALSE, options = NULL),
                
                  selectizeInput(inputId = 'selected_question', 
                                 label = 'Select question for bar_chart', 
                                 choices = start_question_choices, 
                                 selected = start_question_choices[[1]], multiple = FALSE, options = NULL),
                  
                  selectizeInput(inputId = 'selected_variables', 
                                label = 'Select Variable(s) for bar_chart', 
                                choices = start_variable_choices, 
                                selected = start_variable_choices[[1]], multiple = TRUE, options = NULL)
                ),
                box(width = 12,
                    title = 'Selected Question',
                    textOutput(outputId = "selected_text")
                ),
                box(width = 12,
                    title = 'Bar Plots',
                    # downloadButton(outputId = 'download_data', label = 'Download'),
                    plotlyOutput(outputId = 'plot_univar_analysis'),
                    h2(""), # to separate a bit the outputs
                    plotlyOutput(outputId = 'plot_univar_analysis_perc')
                ),
                
                
                box(width = 12,
                    title = 'Data',
                    downloadButton(outputId = 'download_data', label = 'Download CSV'),
                    h2(""), # to separate a bit the outputs
                    dataTableOutput(outputId = 'data_out_univar_analysis')
                )
                      
          )
      ),
      # Second tab content
      tabItem(tabName = "bitab",
              h1("Bivariate Analysis"),
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
              h1("Free-text analysis")
      )
    )
  )


# Setup Shiny app UI components -------------------------------------------
if (interactive()) {
  
ui <- dashboardPage(header, sidebar, body, skin = "black")

server <- function(input, output, session) {
  # ref_analysis_val <- "bar_chart"
  # ref_analysis_val_new <- NULL
  # 
  # observeEvent(input$selected_analysis, {
  #   df <- fragen_dim_namen.df[, c("question_id_variable_name", input$selected_analysis)] 
  #   colnames(df) <- c("question_id_variable_name", "selected_analysis")
  #   newchoices <- df %>% 
  #     filter(selected_analysis == TRUE) %>%
  #     pull("question_id_variable_name") 
  #   
  #   if (ref_analysis_val == input$selected_analysis) {
  #     print(paste("No update - val is", input$selected_analysis))
  #     ref_analysis_val <<-  input$selected_analysis
  #   } else {
  #     # update UI
  #     print(paste("updating selection to", input$selected_analysis))
  #     
  #     #ref_analysis_val <<- NULL
  #     ref_analysis_val <<- input$selected_analysis
  #     #print(newchoices)
  #     updateSelectizeInput(session, 
  #                          'selected_question', 
  #                          label = paste('Select Question for', ref_analysis_val), 
  #                          choices = newchoices, selected = newchoices[[1]], server = TRUE)
  #     
  #     vars <- str_split(newchoices[[1]], pattern = " ", simplify = TRUE)[ ,2]
  #     #print(vars)
  #     colnames_filtered_data_start <- data %>% 
  #       select(starts_with(vars), -ends_with("other")) %>% colnames 
  #     #print(colnames_filtered_data_start)
  #     new_variable_choices <- col_names_labels.df %>% 
  #       filter(colnames %in% colnames_filtered_data_start) %>%
  #       pull("collabels_short")
  #     #print(new_variable_choices)
  #     updateSelectizeInput(session, 
  #                          'selected_variables', 
  #                          label = paste('Select Variable(s) for', ref_analysis_val), 
  #                          choices = new_variable_choices, selected = new_variable_choices[[1]], server = TRUE)
  #   }
  # }, ignoreNULL = FALSE)
  #  print("exited updating filters")
  output$selected_text <- renderText({ 
    if(!is.null(input$selected_question)){
      filter(fragen_dim_namen.df, question_id_variable_name == input$selected_question)$question
    }
  })
  print("rendered text")
  filter.data <- reactive({
    if(!is.null(input$selected_question)){
      # print(input$selected_variables)
      
      vars <- str_split(input$selected_question, pattern = " ", simplify = TRUE)[ ,2]
      # print(vars)
      
      data %>% 
        select(id, starts_with(vars), -ends_with("other"))
      }
  })
  print("filtered data")
  observeEvent(input$selected_question, {
    
    colnames_filtered_data <- filter.data() %>% 
      select(-id) %>% 
      colnames
    
    new_choices <- col_names_labels.df %>% 
      filter(colnames %in% colnames_filtered_data) %>%
      pull("collabels_short")
    
      updateSelectizeInput(session, 
                           'selected_variables', 
                           label = paste('Select Variable(s) for bar_chart'), 
                           choices = new_choices, selected = new_choices[[1]], server = TRUE)

  }, ignoreNULL = FALSE)
  
  print("exited updating filters 2")
  barplot_data.df <- reactive({ 
    filtered_col_names_labels.df <- col_names_labels.df %>% 
      filter(collabels_short %in% input$selected_variables) %>%
      select(colnames, collabels_short)
    
    df <- create_barplot_data(filter.data()) %>%
      merge(filtered_col_names_labels.df, by.x = "variable", by.y = "colnames") %>%
      select(collabels_short, answer, responses, responses_percentage)
    
    colnames(df) <- c("variable", "answer", "responses", "responses_percentage")
    
    df
  })
  
  output$plot_univar_analysis <- renderPlotly(
    create_barplot(df = barplot_data.df(), percent = FALSE, title = "Counts of responses by (selected) Variable(s)")
  )
  
  output$plot_univar_analysis_perc <- renderPlotly(
    create_barplot(df = barplot_data.df(), percent = TRUE, title = "% of responses by (selected) Variable(s)")
  )
  
  output$data_out_univar_analysis <- renderDataTable(
    barplot_data.df(), 
    options = list(pageLength = 10)
  )
  
  print("rendered table")
  output$download_data <- downloadHandler(
    
    filename = function() {
      paste0('data_export_', format(Sys.time(), "%Y%m%d_%H%M%S"), '.csv')
    },
    
    content = function(file) {
      write_csv(x = filter.data(), path = file, na = '')
    }
  )
  
  print("rendered download button")
}

shinyApp(ui, server)
}