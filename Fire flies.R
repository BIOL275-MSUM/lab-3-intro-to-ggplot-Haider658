
# load packages -----------------------------------------------------------

library(tidyverse)

# Fireflies ---------------------------------------------------------------

fireflies_data <- read_csv("https://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02q19FireflySpermatophoreMass.csv")
fireflies_data
distinct(fireflies_data, spermatophoreMass)
count(fireflies_data, spermatophoreMass)
ggplot(data = fireflies_data)
ggplot(data = fireflies_data) +
  geom_bar(mapping = aes(x = spermatophoreMass))
ggplot(data = fireflies_data) +
  geom_bar(mapping = aes(x = spermatophoreMass), fill = "#C5351B") +
  labs(x = "spermatophore mass(g)", y = "Frequency ")
ggplot(data = fireflies_data) +
  geom_bar(mapping = aes(x = spermatophoreMass), fill = "#C5351B", 
           width = 0.001) +
  labs(x = "spermatophore mass(g)", y = "Frequency") +
  scale_y_continuous(limits = c(0, 5), expand = expansion(mult = 0)) +
  theme_classic(base_size = 12) +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(1)),
    axis.text.x = element_text(angle = 45, hjust = 1),
    axis.ticks.x = element_blank()
  )

