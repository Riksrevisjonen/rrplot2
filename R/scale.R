#' import ggplot2
#' import scales
#' import ggthemes
#' import sysfonts
#' import showtext
#' @name imports
NULL

#' Color scale function
#'
#' @inheritParams ggplot2::discrete_scale
#' @inheritParams RR_pal
#' @family color RR
#' @rdname scale_RR
#'
#' @export
#' @examples
#' library(ggplot2)
#' p <- ggplot(iris, aes(x = Sepal.Length,
#' y = Sepal.Width,
#' color = Species)) +
#' theme_RR() +
#' geom_point_RR() +
#' labs(title = "Scatterplot of Sepal Dimensions",
#' x = "Sepal Length",
#' y = "Sepal Width")
#'
#' p + scale_color_RR()
#'
scale_color_RR <- function(...) {
  ggplot2::discrete_scale("color", "RR", RR_pal(), ...)
}

#' Fill scale function
#'
#' @inheritParams ggplot2::discrete_scale
#'
#' @rdname scale_RR
#'
#' @export
#' @examples
#' # Generate example data
#' library(ggplot2)
#' set.seed(123)
#' data <- data.frame(
#' Group = rep(c("Group1", "Group2"), each = 200),
#' Value = c(rnorm(200, mean = 0, sd = 1), rnorm(200, mean = 2, sd = 1)))
#'
#' p <- data |>
#' ggplot(aes(x = Value, fill = Group)) +
#' theme_RR() +
#' geom_density_RR(alpha = 0.5) +
#' labs(x = "Value", y = "Density",
#' fill = "Group")
#'
#' p + scale_fill_RR()
#'
scale_fill_RR <- function(...) {
  ggplot2::discrete_scale("fill", "RR", RR_pal(), ...)
}

#' Color scale function (alternative)
#'
#' @inheritParams ggplot2::discrete_scale
#' @inheritParams RR_pal
#' @family color RR
#' @rdname scale_RR
#'
#' @export
#' @examples
#' library(ggplot2)
#' p <- ggplot(iris, aes(x = Sepal.Length,
#' y = Sepal.Width,
#' color = Species)) +
#' theme_RR() +
#' geom_point_RR() +
#' labs(title = "Scatterplot of Sepal Dimensions",
#' x = "Sepal Length",
#' y = "Sepal Width")
#'
#' p + scale_color_RR_alternative()
#'
#'
scale_color_RR_alternative <- function(...) {
  ggplot2::discrete_scale("color", "RR", RR_pal_alternative(), ...)
}

#' Fill scale function
#'
#' @inheritParams ggplot2::discrete_scale
#'
#' @rdname scale_RR
#'
#' @export
#' @examples
#' # Generate example data
#' library(ggplot2)
#' set.seed(123)
#' data <- data.frame(
#' Group = rep(c("Group1", "Group2"), each = 200),
#' Value = c(rnorm(200, mean = 0, sd = 1), rnorm(200, mean = 2, sd = 1)))
#'
#' p <- data |>
#' ggplot(aes(x = Value, fill = Group)) +
#' theme_RR() +
#' geom_density_RR(alpha = 0.5) +
#' labs(x = "Value", y = "Density",
#' fill = "Group")
#'
#' p + scale_fill_RR_alternative()
#'
scale_fill_RR_alternative <- function(...) {
  ggplot2::discrete_scale("fill", "RR", RR_pal_alternative(), ...)
}

#' Color scale function (traffic - blue)
#'
#' @inheritParams ggplot2::discrete_scale
#' @inheritParams RR_trafikk_pal_blue
#' @family color RR
#' @rdname scale_RR
#'
#' @export
#' @examples
#' library(ggplot2)
#' p <- ggplot(iris, aes(x = Sepal.Length,
#' y = Sepal.Width,
#' color = Species)) +
#' theme_RR() +
#' geom_point_RR() +
#' labs(title = "Scatterplot of Sepal Dimensions",
#' x = "Sepal Length",
#' y = "Sepal Width")
#'
#' p + scale_color_traffic_blue_RR()
#'
scale_color_traffic_blue_RR <- function(...) {
  ggplot2::discrete_scale("color", "RR", RR_trafikk_pal_blue(), ...)
}

#' Fill scale function
#'
#' @inheritParams ggplot2::discrete_scale
#'
#' @rdname scale_RR
#'
#' @export
#' @examples
#' # Generate example data
#' library(ggplot2)
#' set.seed(123)
#' data <- data.frame(
#' Group = rep(c("Group1", "Group2"), each = 200),
#' Value = c(rnorm(200, mean = 0, sd = 1), rnorm(200, mean = 2, sd = 1)))
#'
#' p <- data |>
#' ggplot(aes(x = Value, fill = Group)) +
#' theme_RR() +
#' geom_density_RR(alpha = 0.5) +
#' labs(x = "Value", y = "Density",
#' fill = "Group")
#'
#' p + scale_fill_traffic_blue_RR()
#'
scale_fill_traffic_blue_RR <- function(...) {
  ggplot2::discrete_scale("fill", "RR", RR_trafikk_pal_blue(), ...)
}
#' Color scale function (traffic - green)
#'
#' @inheritParams ggplot2::discrete_scale
#' @inheritParams RR_trafikk_pal_green
#' @family color RR
#' @rdname scale_RR
#'
#' @export
#' @examples
#' library(ggplot2)
#' p <- ggplot(iris, aes(x = Sepal.Length,
#' y = Sepal.Width,
#' color = Species)) +
#' theme_RR() +
#' geom_point_RR() +
#' labs(title = "Scatterplot of Sepal Dimensions",
#' x = "Sepal Length",
#' y = "Sepal Width")
#'
#' p + scale_color_traffic_green_RR()
#'
scale_color_traffic_green_RR <- function(...) {
  ggplot2::discrete_scale("color", "RR", RR_trafikk_pal_green(), ...)
}

#' Fill scale function
#'
#' @inheritParams ggplot2::discrete_scale
#'
#' @rdname scale_RR
#'
#' @export
#' @examples
#' # Generate example data
#' library(ggplot2)
#' set.seed(123)
#' data <- data.frame(
#' Group = rep(c("Group1", "Group2"), each = 200),
#' Value = c(rnorm(200, mean = 0, sd = 1), rnorm(200, mean = 2, sd = 1)))
#'
#' p <- data |>
#' ggplot(aes(x = Value, fill = Group)) +
#' theme_RR() +
#' geom_density_RR(alpha = 0.5) +
#' labs(x = "Value", y = "Density",
#' fill = "Group")
#'
#' p + scale_fill_traffic_green_RR()
#'
scale_fill_traffic_green_RR <- function(...) {
  ggplot2::discrete_scale("fill", "RR", RR_trafikk_pal_green(), ...)
}

#' Continuous fill scale (red)
#'
#' @rdname scale_RR
#'
#' @inheritParams ggplot2::scale_fill_gradient
#'
#' @export
#' @examples
#' library(ggplot2)
#' # Generate example data
#' x <- LETTERS[1:20]
#' y <- paste0("var", seq(1,20))
#' data <- expand.grid(X=x, Y=y)
#' data$Z <- runif(400, 0, 5)
#'
#' # Heatmap
#' p <- data |>
#' ggplot(aes(X,
#' Y,
#' fill= Z)) +
#' geom_tile() +
#' theme_RR()
#'
#' p + scale_fill_continuous_RR_red()
#'
scale_fill_continuous_RR_red <- function(...) {
  ggplot2::scale_fill_gradient(low = "#fcb7b9", high = "#a40000", ...)
}

#' Continuous fill scale (blue)
#'
#' @rdname scale_RR
#'
#' @inheritParams ggplot2::scale_fill_gradient
#'
#' @export
#' @examples
#' library(ggplot2)
#' # Generate example data
#' x <- LETTERS[1:20]
#' y <- paste0("var", seq(1,20))
#' data <- expand.grid(X=x, Y=y)
#' data$Z <- runif(400, 0, 5)
#'
#' # Heatmap
#' p <- data |>
#' ggplot(aes(X,
#' Y,
#' fill= Z)) +
#' geom_tile() +
#' theme_RR()
#'
#' p + scale_fill_continuous_RR_blue()
#'
scale_fill_continuous_RR_blue <- function(...) {
  ggplot2::scale_fill_gradient(low = "#b4c6e9", high = "#001b61", ...)
}

#' Continuous color scale (red)
#'
#' @rdname scale_RR
#'
#' @inheritParams ggplot2::scale_color_gradient
#'
#' @export
#' @examples
#' library(ggplot2)
#' p <- ggplot(mtcars,
#' aes(x = hp,
#' y = mpg,
#' color = cyl)) +
#' theme_RR() +
#' geom_point_RR()
#'
#' p + scale_color_continuous_RR_red()

scale_color_continuous_RR_red <- function(...) {
  ggplot2::scale_color_gradient(low = "#fcb7b9", high = "#a40000", ...)
}

#' Continuous color scale (blue)
#'
#' @rdname scale_RR
#'
#' @inheritParams ggplot2::scale_color_gradient
#'
#' @export
#' @examples
#' library(ggplot2)
#' p <- ggplot(mtcars,
#' aes(x = hp,
#' y = mpg,
#' color = cyl)) +
#' theme_RR() +
#' geom_point_RR()
#'
#' p + scale_color_continuous_RR_blue()

scale_color_continuous_RR_blue <- function(...) {
  ggplot2::scale_color_gradient(low = "#b4c6e9", high = "#001b61", ...)
}

#' Check palette size (help function)
#'
#' @rdname check_pal_n_RR
#' @param n Number of discrete colors in the palette
#' @param max_n Maximum possible number of colors in the palette
#'
#' @export
#'
check_pal_n_RR <- function(n, max_n) {
  if (n > max_n) {
    warning("This palette can handle a maximum of ", max_n, " values.",
            "You have supplied ", n, ".")
  } else if (n < 0) {
    stop("`n` must be a non-negative integer")
  }
}
