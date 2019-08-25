# source: dashboard.R
# in server definition, the code below adapts dinamycally the variables displayed in the top dropdown 

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
