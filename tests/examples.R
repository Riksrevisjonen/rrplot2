
graph_path <- "C:/Users/jsn/Documents/JSN/Digitalisering av rapporter/rrplot2/"

library(dplyr)
library(ggplot2)
library(scales)
library(babynames)
options(scipen = 999)

save_function <- function(gg_obj,
                          filename,
                          width = 16,
                          height = 10){
  print(gg_obj)

  ggsave(gg_obj, filename = paste0(graph_path, filename, ".svg"),
         width = width,
         height = height,
         units = "cm")
}


# library(babynames)

example_1 <- mtcars |>
  ggplot(aes(x = factor(cyl),
             fill = factor(am))) +
  theme_RR() +
  geom_bar_RR() +
  labs(title = "This is a bar chart",
       subtitle = "This is a more detailed description of the underlying data",
       x = "Number of Cylinders",
       y = "Count",
       fill = "Category") +
  scale_fill_RR()

save_function(example_1, filename = "example_1")

example_2 <- iris |>
  ggplot(aes(x = Sepal.Length,
             y = Sepal.Width,
             color = Species)) +
  theme_RR() +
  geom_point_RR() +
  labs(title = "Scatterplot",
       subtitle = "This is a longer text that spans across several lines,\nproviding more information to the reader.",
       x = "Sepal Length",
       y = "Sepal Width") +
  scale_color_RR()

save_function(example_2, filename = "example_2")

example_3 <- mpg |>
  ggplot(aes(cty,
             hwy,
             color = factor(cyl))) +
  theme_RR() +
  geom_jitter_RR() +
  scale_color_RR()

save_function(example_3, filename = "example_3")

example_4 <- mtcars |>
  ggplot(aes(x = hp,
             y = mpg,
             color = cyl)) +
  theme_RR() +
  geom_point_RR() +
  labs(x = "Horse power",
       y = "Miles per gallon",
       fill = "Cylinders") +
  scale_color_continuous_RR_red()

save_function(example_4, filename = "example_4")


# Generate example data
set.seed(123)
data <- data.frame(
  Group = rep(c("Group1", "Group2"), each = 200),
  Value = c(rnorm(200, mean = 0, sd = 1), rnorm(200, mean = 2, sd = 1))
)

# Create density plot
example_5 <- data |>
  ggplot(aes(x = Value, fill = Group)) +
  theme_RR() +
  geom_density_RR(alpha = 0.5) +
  labs(x = "Value", y = "Density",
       fill = "Group") +
  scale_fill_RR()

save_function(example_5, filename = "example_5")

# Load dataset
data("babynames")

data <- babynames |>
  filter(name %in% c("Mary", "Ashley", "Amanda",
                     "Jessica", "Patricia", "Linda",
                     "Deborah", "Dorothy", "Betty")) |>
  filter(sex=="F")

# Plot
example_6 <- data |>
  ggplot(aes(x = year,
             y = n,
             group = name,
             color = name)) +
  theme_RR() +
  geom_line_RR() +
  scale_color_RR() +
  labs(y = "Number",
       color = "Name",
       x = "Year",
       title = "Distribution of selected names",
       subtitle = "Between 1880 and 2010")


save_function(example_6, filename = "example_6")

tmp <- data |>
  mutate(name2=name)

RR_dark_blue <- "#183271"

example_7 <- tmp |>
  ggplot(aes(x = year,
             y = n)) +
  theme_RR() +
  geom_line(data = tmp |> dplyr::select(-name),
            aes(group = name2),
            color = "grey",
            linewidth = 0.5,
            alpha = 0.5) +
  geom_line(aes(color = name),
            color = RR_dark_blue,
            linewidth = 1.2)+
  scale_color_RR() +
  facet_wrap(~name) +
  theme(axis.line = element_blank()) +
  labs(y = "Count",
       x = "Year")

save_function(example_7, filename = "example_7",
              height = 14)


# Dummy data
x <- LETTERS[1:20]
y <- paste0("var", seq(1,20))
data <- expand.grid(X=x, Y=y)
data$Z <- runif(400, 0, 5)

# Heatmap
example_8 <- data |>
  ggplot(aes(X,
             Y,
             fill= Z)) +
  geom_tile() +
  theme_RR() +
  scale_fill_continuous_RR_blue()


save_function(example_8, filename = "example_8")
