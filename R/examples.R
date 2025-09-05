
graph_path <- "C:/Users/jsn/Documents/JSN/Digitalisering av rapporter/rrplot2/"

library(dplyr)
library(ggplot2)
# library(babynames)

example_1 <- mtcars |>
  ggplot(aes(x = factor(cyl),
             fill = factor(am))) +
  theme_RR() +
  geom_bar_RR() +
  labs(title = "Number of Cars per Number of Cylinders",
       x = "Number of Cylinders",
       y = "Count") +
  scale_fill_RR()

example_1

ggsave(example_1, filename = paste0(graph_path, "example_1.svg"),
       width = 16,
       height = 12,
       units = "cm")


example_2 <- iris |>
  ggplot(aes(x = Sepal.Length,
             y = Sepal.Width,
             color = Species)) +
  theme_RR(base_size = 28) +
  geom_point_RR() +
  labs(title = "Scatterplot of Sepal Dimensions",
       subtitle = "Text here",
       x = "Sepal Length",
       y = "Sepal Width") +
  scale_color_RR()

example_2

ggsave(example_2, filename = paste0(graph_path, "example_2.svg"),
       width = 16,
       height = 12,
       units = "cm")


example_3 <- mpg |>
  ggplot(aes(cty,
             hwy,
             color = factor(cyl))) +
  theme_RR() +
  geom_jitter_RR() +
  scale_color_RR()

example_3
