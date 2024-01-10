#' import ggplot2
#' import scales
#' import ggthemes
#' @name imports
NULL

#### Color palette ####

RR_dark_blue <- "#183271"
RR_scarlet_red <- "#E20046"
RR_teal <- "#169AFD"
RR_green <- "#A6D96A"
RR_purple <- "#8A3FFC"
RR_orange <- "#FF9038"

main_colors <- c(RR_dark_blue, RR_scarlet_red, RR_teal, RR_green, RR_purple, RR_orange)

RR_light_blue = "#E9f8FF"

#' RR color palette
#' Defines the official color palette of the Norwegian Office of the Auditor General.
#'
#' @param fill Determines if the palette is used in a fill or color scale function.
#'
#' @export
#'
#' @examples
#' library("scales")
#' show_col(RR_pal()(9))

RR_pal <- function(fill=TRUE) {

  if (fill) {
    max_n <- 9

    f <- function(n) {
      check_pal_n_RR(n, max_n)
      if (n == 1L) {
        i <- RR_dark_blue
      } else if (n == 2L) {
        i <- c(RR_dark_blue, RR_scarlet_red)
      } else if (n == 3L) {
        i <- c(RR_dark_blue, RR_scarlet_red, RR_teal)
      } else if (n == 4L) {
        i <- c(RR_dark_blue, RR_scarlet_red, RR_teal, RR_green)
      } else if (n == 5L) {
        i <- c(RR_dark_blue, RR_scarlet_red, RR_teal, RR_green, RR_purple)
      } else if (n == 6L) {
        i <- c(RR_dark_blue, RR_scarlet_red, RR_teal, RR_green, RR_purple, RR_orange)
      } else if (n == 7L) {
        i <- c(RR_dark_blue, RR_scarlet_red, RR_teal, RR_green, RR_purple, RR_orange, "pink")
      } else if (n == 8L) {
        i <- c(RR_dark_blue, RR_scarlet_red, RR_teal, RR_green, RR_purple, RR_orange, "pink", "black")
      } else if (n >= 8L) {
        i <- c(RR_dark_blue, RR_scarlet_red, RR_teal, RR_green, RR_purple, RR_orange, "pink", "black", "darkgreen")
      }
    }
  } else {
    max_n <- 9
    f <- function(n) {
      check_pal_n_RR(n, max_n)
      if (n == 1L) {
        i <- RR_dark_blue
      } else if (n == 2L) {
        i <- c(RR_dark_blue, RR_scarlet_red)
      } else if (n == 3L) {
        i <- c(RR_dark_blue, RR_scarlet_red, RR_teal)
      } else if (n == 4L) {
        i <- c(RR_dark_blue, RR_scarlet_red, RR_teal, RR_green)
      } else if (n == 5L) {
        i <- c(RR_dark_blue, RR_scarlet_red, RR_teal, RR_green, RR_purple)
      } else if (n == 6L) {
        i <- c(RR_dark_blue, RR_scarlet_red, RR_teal, RR_green, RR_purple, RR_orange)
      } else if (n == 7L) {
        i <- c(RR_dark_blue, RR_scarlet_red, RR_teal, RR_green, RR_purple, RR_orange, "pink")
      } else if (n == 8L) {
        i <- c(RR_dark_blue, RR_scarlet_red, RR_teal, RR_green, RR_purple, RR_orange, "pink", "black")
      } else if (n >= 8L) {
        i <- c(RR_dark_blue, RR_scarlet_red, RR_teal, RR_green, RR_purple, RR_orange, "pink", "black", "darkgreen")
      }
    }
  }
  attr(f, "max_n") <- max_n
  f
}

#### Fill and color scale functions ####

#' Color scale function
#'
#' @inheritParams ggplot2::discrete_scale
#' @inheritParams RR_pal
#' @family color RR
#' @rdname scale_RR
#'
#' @export
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
#'
scale_fill_RR <- function(...) {
  ggplot2::discrete_scale("fill", "RR", RR_pal(), ...)
}

#### Continuous palettes ####
#' Continuous fill scale (red)
#'
#' @rdname scale_RR
#'
#' @inheritParams ggplot2::scale_fill_gradient
#'
#' @export
#'
scale_fill_continuous_RR_red <- function(...) {
  ggplot2::scale_fill_gradient(low = "#FB749D", high = "#B8002A", ...)
}

#' Continuous fill scale (blue)
#'
#' @rdname scale_RR
#'
#' @inheritParams ggplot2::scale_fill_gradient
#'
#' @export
#'
scale_fill_continuous_RR_blue <- function(...) {
  ggplot2::scale_fill_gradient(low = "#4CA4E6", high = "#01123B", ...)
}

#' Continuous color scale (red)
#'
#' @rdname scale_RR
#'
#' @inheritParams ggplot2::scale_color_gradient
#'
#' @export
#'

scale_color_continuous_RR_red <- function(...) {
  ggplot2::scale_color_gradient(low = "#FB749D", high = "#B8002A", ...)
}

#' Continuous color scale (blue)
#'
#' @rdname scale_RR
#'
#' @inheritParams ggplot2::scale_color_gradient
#'
#' @export
#'

scale_color_continuous_RR_blue <- function(...) {
  scale_color_gradient(low = "#4CA4E6", high = "#01123B", ...)
}

#### Basic theme function ####

#' Basic theme function to implement the official graph style of the Norwegian Office of the Auditor General.
#'
#' @inheritParams ggplot2::theme_grey
#'
#' @export
#'
theme_RR <- function(base_size = 12, base_family = "sans") {

  ret <-
    ggthemes::theme_foundation(base_size = base_size, base_family = base_family) +
    ggplot2::theme(line = element_line(color = "#183271"),
                   rect = element_rect(fill = main_colors, color = NA,
                                       linetype = 1),
                   text = element_text(color = "#183271"),

                   # Axis lines
                   axis.line = element_line(RR_dark_blue,
                                            linewidth = rel(0.8)),

                    # Axis titles
                    axis.title.y = element_text(margin = margin(r = base_size+8,
                                                                l = base_size),
                                                angle = 90,
                                                size = rel(1.15)),
                    axis.title.x = element_text(margin = margin(t = base_size+8,
                                                                b = base_size),
                                                size = rel(1.15)),

                    # Axis text
                    axis.text = element_text(size = rel(1)),
                    axis.text.x = element_text(vjust = 0,
                                               margin = margin(t = base_size-5,
                                                               unit = "pt"),
                                               size = rel(1)),
                    axis.text.y = element_text(hjust = 0,
                                               margin = margin(r = base_size-5,
                                                               unit = "pt"),
                                               size = rel(1)),

                    # Axis ticks
                    axis.ticks = element_blank(),
                    axis.ticks.length = unit(-0.25, "cm"),

                    # Legend
                    legend.background = element_rect(fill = RR_light_blue,
                                                     color = RR_light_blue,
                                                     linetype = 0),
                    legend.box.background = element_rect(fill = RR_light_blue,
                                                         color = RR_light_blue,
                                                         linetype = 0),
                    legend.spacing = margin(c(0,0,0,0), "points"),
                    legend.key = element_rect(fill = RR_light_blue,
                                              color = RR_light_blue,
                                              linetype = 0),
                    legend.key.size = unit(1.2, "lines"),
                    legend.key.height = NULL,
                    legend.key.width = NULL,
                    legend.text = element_text(size = rel(1.1)),
                    legend.text.align = NULL,
                    legend.title = element_text(size = rel(1.2),  hjust = 0,
                                                margin = margin(t = 12,
                                                                unit = "pt")),
                    legend.title.align = NULL,
                    legend.position = "right",
                    legend.direction = NULL,
                    legend.justification = "center",

                    # Panel and plot backgrounds
                    panel.background = element_rect(fill = "white", linetype = 0),
                    panel.border = element_blank(),
                    panel.grid.major = element_line(color = alpha(RR_dark_blue, 0.5),
                                                    linewidth = rel(1.75),
                                                    linetype = "dotted", size = 0.6),
                    panel.grid.minor = element_blank(),
                    panel.spacing = unit(0.25, "lines"),
                    plot.background = element_rect(fill = RR_light_blue,
                                                   color = RR_light_blue),

                    # Facet wrap aesthetics
                    strip.background.x = element_rect(color = "transparent",
                                                      fill = "transparent"),
                    strip.background.y = element_rect(color = "transparent",
                                                      fill = "transparent"),
                    strip.text = element_text(color = RR_dark_blue,
                                              family = base_family,
                                              face = "bold",
                                              size = rel(1),
                                              margin = unit(c(0.5,0,0.35,0), "lines")),

                    # Plot title
                    plot.title = element_text(size = rel(1.5),
                                              hjust = 0, face = "bold",
                                              margin = margin(b = 12,
                                                              unit = "points")),

                    # Spacing
                    plot.margin = unit(c(1, 0.6, 0.4, 0.4), "cm"),
                    complete = TRUE)
  ret
}

#### Specific theme functions ####

#' Custom wrapper for geom_bar
#'
#' @inheritParams ggplot2::geom_bar
#'
#' @export
#'
geom_bar_RR <- function(..., width = 0.6){
  list(ggplot2::geom_bar(..., width = width),
       ggplot2::scale_y_continuous(expand = expansion(mult = c(0,0.1))))
}

#' Custom wrapper for flipped version of geom_bar
#'
#' @export
#'
geom_bar_flipped_RR <- function(){
  list(geom_bar_RR(),
       ggplot2::theme(panel.grid.major.x = element_line(color = scales::alpha(RR_dark_blue, 0.5),
                                               linewidth = rel(1.75),
                                               linetype = "dotted", size = 0.6),
             panel.grid.major.y = element_blank(),
             legend.position = "bottom"),
       ggplot2::coord_flip())
}

#' Custom wrapper for geom_point
#'
#' @inheritParams ggplot2::geom_point
#' @param size Size of the dots.
#'
#' @export
#'
geom_point_RR <- function(..., size = 2.5){
  list(ggplot2::geom_point(size = size),
       ggplot2::theme(panel.grid.major.x = element_line(color = scales::alpha(RR_dark_blue, 0.5),
                                               linewidth = rel(1.75),
                                               linetype = "dotted", size = 0.6),
             panel.grid.major.y = element_line(color = scales::alpha(RR_dark_blue, 0.5),
                                               linewidth = rel(1.75),
                                               linetype = "dotted", size = 0.6)),
       ggplot2::scale_y_continuous(expand = expansion(mult = c(0.1,0.1))))
}

#' Custom wrapper for geom_jitter
#'
#' @inheritParams ggplot2::geom_jitter
#' @param size Size of the dots.
#'
#' @export
#'
geom_jitter_RR <- function(..., size = 2.5){
  list(ggplot2::geom_jitter(size = size),
       ggplot2::theme(panel.grid.major.x = element_line(color = scales::alpha(RR_dark_blue, 0.5),
                                               linewidth = rel(1.75),
                                               linetype = "dotted", size = 0.6),
             panel.grid.major.y = element_line(color = scales::alpha(RR_dark_blue, 0.5),
                                               linewidth = rel(1.75),
                                               linetype = "dotted", size = 0.6)),
       ggplot2::scale_y_continuous(expand = expansion(mult = c(0.1,0.1))))
}

#' Custom wrapper for geom_density
#'
#' @inheritParams ggplot2::geom_density
#' @param alpha Degree of transparency in the density plots.
#'
#' @export
#'
geom_density_RR <- function(..., alpha = 0.5){
  list(ggplot2::geom_density(alpha = alpha),
       ggplot2::scale_y_continuous(expand = expansion(mult = c(0,0.1))))
}

#' Custom wrapper for geom_line
#'
#' @inheritParams ggplot2::geom_line
#' @param size Thickness of the line.
#'
#' @export
#'
geom_line_RR <- function(..., size = 1.5){
  list(ggplot2::geom_line(size = size),
       ggplot2::scale_y_continuous(expand = expansion(mult = c(0,0.1))))
}


