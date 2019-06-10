# skript enthält die Funktionen, die in der Aufbereitung des Diversity Profiles genutzt werden.

select_mc <- function(data, searchterm, id = 1) {
      
      quo_searchterm <- quo(searchterm)
      if (id == TRUE) {
            data %>% select(contains((!!quo_searchterm)), -contains("other"), id)
      } else if (id == FALSE) {
            data %>% select(contains((!!quo_searchterm)), -contains("other"))
      }
}

tidy_mc = function(data, searchterm, kind = 2) {
      
      select_mc(data, searchterm) %>% 
            gather(key = var, value = answer , -id) %>% 
            arrange(id)
}

frq_mc = function(data, searchterm, kind = 2) {
      
      if (kind == 1) {
            data %>% 
                  tidy_mc(searchterm) %>% 
                  tabyl(answer, var) 
      } else if (kind == 2) {
            data %>% 
                  tidy_mc(searchterm) %>% 
                  tabyl(var, answer) %>% 
                  adorn_percentages() %>% 
                  adorn_rounding(digits = 2) 
      }
}

my_barplot = function(data = raw1, variable) {
      
      ggplot(data = data, aes_string(x = variable) ) +
            geom_bar() +
            theme_bw(base_size = 14) 
}

barplot_mc = function(data, searchterm) {
      
      plot_vars <- names(data %>% select_mc(searchterm, id = 0))
      #plot_vars <- names(!!quo_vars)
      all_plots = pmap(list((plot_vars)), ~ my_barplot(data, variable = .x))
      all_plots
      
}

frqplot_mc = function(data  = raw1, searchterm, version = 1) {
      
      if (version == 1) {
            data %>% 
                  tidy_mc(searchterm) %>% 
                  ggplot(aes(x = answer, fill = var)) +
                  geom_bar(position = "dodge") +
                  facet_wrap(~ var, scales = "free_x") +
                  theme(legend.position = "none")
      } else if (version == 2) {
            data %>% 
                  tidy_mc(searchterm) %>% 
                  ggplot(aes(x = var, fill = answer)) +
                  geom_bar(position = "dodge") +
                  facet_wrap(~ answer) +
                  coord_flip() +
                  theme(legend.position = "none")
      }
}

get_info = function(data, searchterm, var_name = 1, val_name = 1) {
      
      # filter für variablennamen die "lebsit" enthalten
      var_label <- names(data)[grepl(searchterm, attributes(data)$names)]
      # filter für die passenden variablen labels
      val_label <- attributes(data)$variable.labels[grepl(searchterm, attributes(data)$names)]
      
      if (var_name == 1 & val_name == 1) {
            cat(paste0("Variable ", var_label, ": \n", " Value Label: ", val_label, " \n \n"))
      } else if (var_name == 0 & val_name == 1) {
            cat(paste0("Value Label: ", val_label, " \n \n"))
      } else if (var_name == 1 & val_name == 0) {
            cat(paste0("Variable ", var_label, ": \n"))
      }
}