

create_barplot <- function(df, percent = FALSE, title = ""){
      summ.df <- df %>% 
            gather(key = "question", value = "answer", -id, na.rm = TRUE) %>% 
            group_by(question, answer) %>% 
            summarise( responses = length(unique(id)))
      if(percent){
            summ.df %>% 
                  ggplot(aes(x= question, y = responses, fill = answer)) + 
                  geom_bar(stat = "identity", position = "fill") + #make the stacked bars
                  scale_y_continuous(labels = scales::percent) + #change y axis to % format 
                  theme(legend.position="bottom", axis.text.x = element_text(angle = 45, hjust = 1))    
      } else {
            summ.df %>% 
                  ggplot(aes(x= question, y = responses, fill = answer)) + 
                  geom_bar(stat = "identity", position = "stack") + #make the stacked bars
                  theme(legend.position="bottom", axis.text.x = element_text(angle = 45, hjust = 1))
      }
}