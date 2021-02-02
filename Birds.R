
# load packages -----------------------------------------------------------

library(auk)                          # load the auk package
library(tidyverse) 
# Birds -------------------------------------------------------------------

birds <- ebird_taxonomy %>%           # start with the ebird_taxonomy data
  as_tibble() %>%                     # tibbles print better in the console
  filter(category == "species")       # remove non-species taxa

birds
distinct(birds,order)
count(birds, order)
ggplot(data = birds)
ggplot(data = birds) +
  geom_bar(mapping = aes(x = order))
ggplot(data = birds) +
  geom_bar(mapping = aes(x = fct_infreq(order)))
ggplot(data = birds) +
  geom_bar(mapping = aes(x = fct_infreq(order)), fill = "#C5351B")
ggplot(data = birds) +
  geom_bar(mapping = aes(x = fct_infreq(order)), fill = "#C5351B") +
  labs(x = "Order", y = "Frequency ")
ggplot(data = birds) +
  geom_bar(mapping = aes(x = fct_infreq(order)), fill = "#C5351B", 
           width = 0.8) +
  labs(x = "Order", y = "Frequency ") +
  scale_y_continuous( expand = expansion(mult = 0)) + 

  theme_classic(base_size = 10) +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(1)),
    axis.text.x = element_text(angle = 45, hjust = 1),
    axis.ticks.x = element_blank()
  )

