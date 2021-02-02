
# load packages -----------------------------------------------------------

library(tidyverse)

# deaths from tigers ------------------------------------------------------

tiger_data <- read_csv("https://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02e2aDeathsFromTigers.csv")
#> 
#> ── Column specification ────────────────────────────────────────────────────────
#> cols(
#>   person = col_double(),
#>   activity = col_character()
#> )
tiger_data                  # print the data in the console
#> # A tibble: 88 x 2
#>   person activity             
#>    <dbl> <chr>                
#> 1      1 Disturbing tiger kill
#> 2      2 Forest products      
#> 3      3 Grass/fodder         
#> 4      4 Fuelwood/timber      
#> 5      5 Grass/fodder         
#> 6      6 Forest products      
#> # … with 82 more rows
distinct(tiger_data, activity)
count(tiger_data, activity)
ggplot(data = tiger_data)
ggplot(data = tiger_data) +
  geom_bar(mapping = aes(x = activity))
tiger_data
ggplot(data = tiger_data) +
  geom_bar(mapping = aes(x = fct_infreq(activity)))
ggplot(data = tiger_data) +
  geom_bar(mapping = aes(x = fct_infreq(activity)), fill = "#C5351B")
ggplot(data = tiger_data) +
  geom_bar(mapping = aes(x = fct_infreq(activity)), fill = "#C5351B") +
  labs(x = "Activity", y = "Frequency (number of people)")
ggplot(data = tiger_data) +
  geom_bar(mapping = aes(x = fct_infreq(activity)), fill = "#C5351B", 
           width = .8) +
  labs(x = "Activity", y = "Frequency (number of people)") +
  scale_y_continuous(limits = c(0, 50), expand = expansion(mult = 0)) +
  theme_classic(base_size = 12) +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(1)),
    axis.text.x = element_text(angle = 45, hjust = 1),
    axis.ticks.x = element_blank()
  )

# bird abundances ---------------------------------------------------------

bird_data <- read_csv("https://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02e2bDesertBirdAbundance.csv")
bird_data
ggplot(data = bird_data)
ggplot(data = bird_data) +
  geom_histogram(mapping = aes(x = abundance))
ggplot(data = bird_data) +
  geom_histogram(mapping = aes(x = abundance), binwidth = 50)
ggplot(data = bird_data) +
  geom_histogram(mapping = aes(x = abundance), binwidth = 50,
                 boundary = 0, closed = "left")
ggplot(data = bird_data) +
  geom_histogram(mapping = aes(x = abundance), binwidth = 50,
                 boundary = 0, closed = "left")
ggplot(data = bird_data) +
  geom_histogram(mapping = aes(x = abundance), binwidth = 50,
                 boundary = 0, closed = "left", 
                 fill = "#C5351B", color = "black") +
  labs(x = "Abundance", y = "Frequency (number of species)") +
  scale_y_continuous(breaks = seq(0, 30, 5), limits = c(0, 30), 
                     expand = expansion(mult = 0)) +
  scale_x_continuous(breaks = seq(0, 600, 100)) +
  theme_classic() +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(1))
  )

