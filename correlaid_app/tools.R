library(glue)
library(tidyverse) # to load tidyr, dplyr, ggplot2,...
library(plotly)
library(readxl)
# Text Mining ----------------------------------------
library(lsa) # stopwords in german
library(SnowballC) # word trunkating
library(tidytext) # text mining
# Visualization --------------------------------------
library(igraph) # networks viz
library(wordcloud) # wordcloud viz
library(widyr)

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

start_text_question_choices <- fragen_dim_namen.df %>%
   select(question_id_variable_name, freetext) %>% 
   filter(freetext == TRUE) %>%
   pull("question_id_variable_name") 

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

##################################
# Text Analysis

# DELETE 
# -----
data$fgeshandother[2:10] <- c("unicorn", "what a unicorn", "test it all", "I want it all", "test", "I want it now", "unicorn queen", "test", "words")
#------

data(stopwords_de)
stopwords_de <- data_frame(token = stopwords_de)

#' Tokenizes the text in a data frame removing numbers, signs and stopwords 
#'
#' @param df Input dataframe. 
#' @param do_stem boolean is TRUE to get only stem of words, FALSE to get full words.
#' @param custom_stopwords custom words to remove from dataframe.
#' @return Input dataframe with new colum "token" with 1 row per word.
tokenize_and_clean <- function(df, do_stem = FALSE, custom_stopwords = NULL){
   out.df <- df %>% 
      unnest_tokens(token, Text) %>% # tokenize
      filter(str_detect(token, "[a-z]")) %>% # keep only words, remove numbers and signs 
      anti_join(stopwords_de, by = "token") %>% # remove stopwords
      filter(!(token %in% c(custom_stopwords)) ) # remove custom stopwords
   
   if(do_stem){
      return(mutate(out.df, token = wordStem(.$token, language = "german")))
   } 
   
   return(out.df)
}

#' Generates DataFrame with counts of words (appearing at least 2 times).
#'
#' @param df Input (tokenized) dataframe. 
#' @return DataFrame
count_words_df <- function(df){
   df %>%
      count(token, sort = TRUE) %>%
      filter(n > 1) 
}

#' Generates Barplot of Top n most common words.
#'
#' @param df Input (tokenized) dataframe. 
#' @param show_n Integer of Top n most common words to display (Default = 10)
#' @return Barplot
count_words_barplot <- function(df, show_n = 10){
   
   df %>%
      top_n(n = show_n, wt= n) %>%
      mutate(token = reorder(token, n)) %>%
      ggplot(aes(token, n)) +
         theme_light() +
         geom_col(show.legend = FALSE) +
         coord_flip() + ggtitle(glue('Top {show_n} words'))
}

#' Generates Network words used over some threshold with following specs:
#' Node size = how much the words was used.
#' Edge size = how many times these words have been used together.
#'
#' @param df Input (tokenized) dataframe. 
#' @param threshold threshold fo display words with count > threshold
#' @param curr_q dataframe with correspondence of current question numbers across the surveys and labels for printing titles.
#' @param edge_w factor to scale edge width
#' @param vertex_s factor to scale vertex size
#' @return Network
network_generate <- function(df, threshold, curr_q, edge_w = 3, vertex_s = 1/3, vertex_label_dist = 0.5, vertex_label_cex = 0.3){
   # We save the network plot as a pdf file.
   pdf(paste("exported_nw", unique(curr_q$Label), paste(unique(df$Jahr), collapse = "_"), ".pdf"))
   # Compute pairwise word count. 
   pair_wise_count_df <- df %>% 
      select(token, rowid) %>%
      pairwise_count(item = token, feature = rowid) %>% 
      filter(item1 < item2) %>% arrange(item1, item2) %>% 
      arrange(- n)
   # Define network object. 
   network <-  pair_wise_count_df %>%
      filter(n > threshold) %>% # apply threshold
      graph_from_data_frame(directed = FALSE)
   
   # Store the degree.
   V(network)$degree <- degree(graph = network)
   
   # Compute the weight shares.
   E(network)$width <- E(network)$n/max(E(network)$n)
   
   # Plot the network.
   plot(network, 
        vertex.color = 'lightblue',
        # Scale node size by degree.
        vertex.size = vertex_s*V(network)$degree,
        vertex.label.color = 'black', 
        vertex.label.cex = vertex_label_cex, 
        vertex.label.dist = vertex_label_dist,
        edge.color = 'gray', 
        # Set edge width proportional to the weight relative value.
        edge.width = edge_w*E(network)$width,
        main =  paste(unique(curr_q$Label), "for suveys:", paste(unique(df$Jahr), collapse = ",")), 
        sub = glue('Weight Threshold: {threshold}'), 
        alpha = 50)
   dev.off()
}