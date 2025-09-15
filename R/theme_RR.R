#' import ggplot2
#' import scales
#' import ggthemes
#' import grid
#' import sysfonts
#' import showtext
#' @name imports
NULL

#' Basic theme function to implement the official graph style of the Norwegian Office of the Auditor General.
#'
#' @inheritParams ggplot2::theme_grey
#'
#' @export
#' @examples
#' library(ggplot2)
#' p <- ggplot(mtcars) + geom_point(aes(x = wt, y = mpg,
#' colour = factor(gear)))
#'
#' p + theme_RR()

theme_RR <- function(base_size = 12, base_family = "sans", use_avenir = TRUE) {

  # Set font families based on use_avenir
  text_family   <- if (use_avenir) "Avenir-brodtekst" else base_family
  title_family  <- if (use_avenir) "Avenir-tittel" else base_family

  ret <-
    ggthemes::theme_foundation(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      line = ggplot2::element_line(color = RR_gridlines_color),
      rect = ggplot2::element_rect(fill = main_colors, color = NA, linetype = 1),
      text = ggplot2::element_text(color = "black", family = text_family),

      axis.line = element_blank(),

      axis.title.y = ggplot2::element_text(
        margin = ggplot2::margin(t = 5, r = 15, b = 5, l = 5, unit = "pt"),
        angle = 90, size = ggplot2::rel(1), family = text_family
      ),
      axis.title.x = ggplot2::element_text(
        margin = ggplot2::margin(t = 15, r = 5, b = 5, l = 5, unit = "pt"),
        size = ggplot2::rel(1), family = text_family
      ),

      axis.text = ggplot2::element_text(size = ggplot2::rel(1), family = text_family),
      axis.text.x = ggplot2::element_text(
        vjust = 0.5,
        margin = ggplot2::margin(t = base_size, unit = "pt"),
        size = ggplot2::rel(1), family = text_family
      ),
      axis.text.y = ggplot2::element_text(
        hjust = 1,
        margin = ggplot2::margin(r = base_size, unit = "pt"),
        size = ggplot2::rel(1), family = text_family
      ),

      axis.ticks = ggplot2::element_blank(),
      axis.ticks.length = grid::unit(-0.25, "cm"),

      legend.background = ggplot2::element_rect(fill = RR_background_color, color = RR_background_color, linetype = 0),
      legend.box.background = ggplot2::element_rect(fill = RR_background_color, color = RR_background_color, linetype = 0),
      legend.key = ggplot2::element_rect(fill = RR_background_color, color = RR_background_color, linetype = 0),
      legend.key.size = grid::unit(1.2, "lines"),
      legend.key.height = NULL,
      legend.key.width = NULL,
      legend.text = ggplot2::element_text(size = ggplot2::rel(1), family = text_family),
      legend.text.align = NULL,
      legend.title = ggplot2::element_text(
        size = ggplot2::rel(1), hjust = 0, face = "bold",
        margin = ggplot2::margin(t = 0, r = 0, b = 5, l = 0, unit = "pt"),
        family = title_family
      ),
      legend.title.align = NULL,
      legend.position = "right",
      legend.direction = NULL,
      legend.justification = "center",

      panel.background = ggplot2::element_rect(fill = "white", linetype = 0),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(color = RR_gridlines_color, linewidth = ggplot2::rel(1.75), linetype = "solid", size = RR_gridlines_size),
      panel.grid.minor = ggplot2::element_blank(),

      panel.spacing = grid::unit(1, "lines"),

      plot.background = ggplot2::element_rect(fill = RR_background_color, color = RR_background_color),
      strip.background = ggplot2::element_rect(color = "transparent", fill = "transparent"),
      strip.text = ggplot2::element_text(
        color = RR_font_color, family = text_family, face = "bold",
        size = ggplot2::rel(1), margin = grid::unit(c(0.5,0,0.35,0), "lines")
      ),

      plot.title = ggplot2::element_text(
        size = ggplot2::rel(1.5), hjust = 0, face = "bold",
        margin = ggplot2::margin(t = 0, r = 0, b = 9, l = 0, unit = "pt"),
        family = title_family
      ),
      plot.subtitle = ggplot2::element_text(
        hjust = 0,
        margin = ggplot2::margin(t = 0, r = 0, b = 12, l = 0, unit = "pt"),
        family = text_family
      ),

      plot.margin = grid::unit(c(15, 5, 5, 5), "pt"),
      complete = TRUE
    )
  ret
}
