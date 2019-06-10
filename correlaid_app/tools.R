library(tidyverse)
library(plotly)
library(readxl)

###########################################

fragen_dim_namen.df <- read_excel("exports/mapping_colnames_20190530_174209.xlsx", 
                                               sheet = "fragen_dim_namen")

start_question_choices <- fragen_dim_namen.df %>%
      select(question_id_variable_name, bar_chart) %>% 
      filter(bar_chart == TRUE) %>%
      pull("question_id_variable_name") 

col_names_labels.df <- read_excel("exports/mapping_colnames_20190530_174209.xlsx", 
                                  sheet = "col_names_labels")

vars <- str_split(start_question_choices[[1]], pattern = " ", simplify = TRUE)[ ,2]
colnames_filtered_data_start <- data %>% 
   select(starts_with(vars), -ends_with("other")) %>% colnames 

start_variable_choices <- col_names_labels.df %>% 
   filter(colnames %in% colnames_filtered_data_start) %>%
   pull("collabels_short")

######################################

pasteCollPlus <- function(...) {
   paste(..., collapse = "+")
}

create_barplot_data <- function(df){
   total_ids <- df %>% 
      gather(key = "variable", value = "answer", -id, na.rm = TRUE) %>% 
      group_by(variable) %>% 
      summarise(total_responses = length(unique(id)))
   
   summ.df <- df %>% 
      gather(key = "variable", value = "answer", -id, na.rm = TRUE) %>% 
      group_by(variable, answer) %>% 
      summarise( responses = length(unique(id))) %>%
      merge(total_ids, by = "variable") %>%
      mutate(responses_percentage = round(100*responses/total_responses, 2))
   
   return(summ.df)
}

create_barplot <- function(df, percent = FALSE, title = ""){
      
      if(percent){
         df %>% 
            ggplot(aes(x= variable, y = responses_percentage, fill = answer)) + 
            geom_bar(stat = "identity", position = "dodge") + #make the stacked bars
            theme(legend.position="bottom", axis.text.x = element_text(angle = 45, hjust = 1)) +
            ggtitle(title) + 
            xlab("Selected Variable(s)") +
            ylab("% of responses")
                  
      } else {
         df %>% 
            ggplot(aes(x= variable, y = responses, fill = answer)) + 
            geom_bar(stat = "identity", position = "dodge") + #make the stacked bars
            theme(legend.position="bottom", axis.text.x = element_text(angle = 45, hjust = 1)) +
            ggtitle(title) + 
            xlab("Selected Variable(s)") +
            ylab("Number of responses")
      }
}

