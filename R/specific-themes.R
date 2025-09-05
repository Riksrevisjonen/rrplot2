#' import ggplot2
#' import scales
#' import ggthemes
#' @name imports
NULL

#' Custom wrapper for geom_bar
#'
#' @inheritParams ggplot2::geom_bar
#'
#' @export
#' @examples
#' library(ggplot2)
#' mtcars |>
#' ggplot(aes(x = factor(cyl),
#' fill = factor(am))) +
#' theme_RR() +
#' geom_bar_RR() +
#' labs(title = "Number of Cars per Number of Cylinders",
#' x = "Number of Cylinders",
#' y = "Count") +
#' scale_fill_RR()
#'
geom_bar_RR <- function(..., width = 0.6){
  list(ggplot2::geom_bar(..., width = width),
       ggplot2::scale_y_continuous(expand = ggplot2::expansion(mult = c(0,0.1))))
}

#' Custom wrapper for flipped version of geom_bar
#'
#' @export
#' @examples
#' library(ggplot2)
#' mtcars |>
#' ggplot(aes(x = factor(cyl),
#' fill = factor(am))) +
#' theme_RR() +
#' geom_bar_flipped_RR() +
#' labs(title = "Number of Cars per Number of Cylinders",
#' x = "Number of Cylinders",
#' y = "Count") +
#' scale_fill_RR()
#'
geom_bar_flipped_RR <- function(){
  list(geom_bar_RR(),
       ggplot2::theme(panel.grid.major.x = ggplot2::element_line(RR_gridlines_color,
                                                                 linewidth = ggplot2::rel(1.75),
                                                                 linetype = "dotted", size = 0.6),
                      panel.grid.major.y = ggplot2::element_blank(),
                      legend.position = "bottom"),
       ggplot2::coord_flip())
}

#' Custom wrapper for geom_point
#'
#' @inheritParams ggplot2::geom_point
#' @param size Size of the dots.
#'
#' @export
#' @examples
#' library(ggplot2)
#' iris |>
#' ggplot(aes(x = Sepal.Length,
#' y = Sepal.Width,
#' color = Species)) +
#' theme_RR() +
#' geom_point_RR() +
#' labs(title = "Scatterplot of Sepal Dimensions",
#' x = "Sepal Length",
#' y = "Sepal Width") +
#' scale_color_RR()
#'
geom_point_RR <- function(..., size = 2.5){
  list(ggplot2::geom_point(size = size),
       ggplot2::theme(panel.grid.major.x = ggplot2::element_line(color = RR_gridlines_color,
                                                                 linewidth = RR_gridlines_size,
                                                                 linetype = "solid", size = 0.6),
                      panel.grid.major.y = ggplot2::element_line(color = RR_gridlines_color,
                                                                 linewidth = RR_gridlines_size,
                                                                 linetype = "solid", size = 0.6)),
       ggplot2::scale_y_continuous(expand = ggplot2::expansion(mult = c(0.1,0.1))))
}

#' Custom wrapper for geom_jitter
#'
#' @inheritParams ggplot2::geom_jitter
#' @param size Size of the dots.
#' @param width Amount of horizontal jitter.
#' @param height Amount of vertical jitter.
#'
#' @export
#' @examples
#' library(ggplot2)
#' iris |>
#' ggplot(aes(x = Species,
#' y = Sepal.Length)) +
#' theme_RR() +
#' geom_jitter_RR(width = 0.1)
#'
geom_jitter_RR <- function(..., size = 2.5, width = 0.4, height = 0.4){
  list(ggplot2::geom_jitter(size = size, width = width, height = height),
       ggplot2::theme(panel.grid.major.x = ggplot2::element_line(color = RR_gridlines_color,
                                                        linewidth = RR_gridlines_size,
                                                        linetype = "solid"),
                      panel.grid.major.y = ggplot2::element_line(color = RR_gridlines_color,
                                                        linewidth = RR_gridlines_size,
                                                        linetype = "solid")))
}

#' Custom wrapper for geom_density
#'
#' @inheritParams ggplot2::geom_density
#' @param alpha Degree of transparency in the density plots.
#'
#' @export
#' @examples
#' library(ggplot2)
#' # Generate example data
#' set.seed(123)
#' data <- data.frame(
#'   Group = rep(c("Group1", "Group2"), each = 200),
#'   Value = c(rnorm(200, mean = 0, sd = 1), rnorm(200, mean = 2, sd = 1)))
#'
#' # Create density plot
#' data |>
#'   ggplot(aes(x = Value, fill = Group)) +
#'   theme_RR() +
#'   geom_density_RR(alpha = 0.5) +
#'   labs(x = "Value", y = "Density",
#'        fill = "Group") +
#'   scale_fill_RR()
geom_density_RR <- function(..., alpha = 0.5){
  list(ggplot2::geom_density(alpha = alpha),
       ggplot2::scale_y_continuous(expand = ggplot2::expansion(mult = c(0,0.1))))
}

#' Custom wrapper for geom_line
#'
#' @inheritParams ggplot2::geom_line
#' @param linewidth Thickness of the line.
#'
#' @export
#'
geom_line_RR <- function(..., linewidth = 1.5){
  list(ggplot2::geom_line(linewidth = linewidth),
       ggplot2::scale_y_continuous(expand = ggplot2::expansion(mult = c(0.1,0.1))))
}


