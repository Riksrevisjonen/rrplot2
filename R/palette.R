#' import ggplot2
#' import scales
#' import ggthemes
#' import sysfonts
#' import showtext
#' @name imports
NULL

color_1 <- "#A40000"      # Bright Red
color_2 <- "#FF7F00"    # Flush Orange
color_3 <- "#193271"          # Biscay
color_4 <- "#00BA89" # Caribbean Green
color_5 <- "#E20029"           # Monza
color_6 <- "#6C93E1"   # Havelock Blue
color_7 <- "#730F7A"     # Clairvoyant
color_8 <- "#FFC200"       # Supernova
color_9 <- "#0E6669"  # Deep Sea Green
color_10 <- "#000000"           # Black

main_colors <- c(color_1, color_2, color_3,
                 color_4, color_5, color_6)

RR_background_color = "white"
RR_gridlines_color = "gray80"
RR_gridlines_size = 0.2
RR_font_color = "black"

sysfonts::font_add("Avenir-brodtekst", "K:/Avdelinger/F1/Visualisering/AvenirLTStd-Roman_0.otf")
sysfonts::font_add("Avenir-tittel", "K:/Avdelinger/F1/Visualisering/AvenirLTStd-Black.otf")
# sysfonts::font_add(
#   "Avenir-brodtekst",
#   system.file("fonts", "AvenirLTStd-Roman_0.otf", package = "rrplot2")
# )
# sysfonts::font_add("Avenir-tittel", system.file("fonts", "AvenirLTStd-Black.otf", package = "rrplot2"))
showtext::showtext_auto()


#' RR color palette
#' Defines the official color palette of the Norwegian Office of the Auditor General.
#'
#' @param fill Determines if the palette is used in a fill or color scale function.
#'
#' @export
#'
#' @examples
#' library(scales)
#' show_col(RR_pal()(10))

RR_pal <- function(fill=TRUE) {

  if (fill) {
    max_n <- 10

    f <- function(n) {
      check_pal_n_RR(n, max_n)
      if (n == 1L) {
        i <- color_1
      } else if (n == 2L) {
        i <- c(color_1, color_2)
      } else if (n == 3L) {
        i <- c(color_1, color_2, color_3)
      } else if (n == 4L) {
        i <- c(color_1, color_2, color_3, color_4)
      } else if (n == 5L) {
        i <- c(color_1, color_2, color_3, color_4, color_5)
      } else if (n == 6L) {
        i <- c(color_1, color_2, color_3, color_4, color_5, color_6)
      } else if (n == 7L) {
        i <- c(color_1, color_2, color_3, color_4, color_5, color_6, color_7)
      } else if (n == 8L) {
        i <- c(color_1, color_2, color_3, color_4, color_5, color_6, color_7, color_8)
      } else if (n == 9L) {
        i <- c(color_1, color_2, color_3, color_4, color_5, color_6, color_7, color_8, color_9)
      } else if (n >= 9L) {
        i <- c(color_1, color_2, color_3, color_4, color_5, color_6, color_7, color_8, color_9, color_10)
      }
    }
  } else {
    max_n <- 10
    f <- function(n) {
      check_pal_n_RR(n, max_n)
      if (n == 1L) {
        i <- color_1
      } else if (n == 2L) {
        i <- c(color_1, color_2)
      } else if (n == 3L) {
        i <- c(color_1, color_2, color_3)
      } else if (n == 4L) {
        i <- c(color_1, color_2, color_3, color_4)
      } else if (n == 5L) {
        i <- c(color_1, color_2, color_3, color_4, color_5)
      } else if (n == 6L) {
        i <- c(color_1, color_2, color_3, color_4, color_5, color_6)
      } else if (n == 7L) {
        i <- c(color_1, color_2, color_3, color_4, color_5, color_6, color_7)
      } else if (n == 8L) {
        i <- c(color_1, color_2, color_3, color_4, color_5, color_6, color_7, color_8)
      } else if (n == 9L) {
        i <- c(color_1, color_2, color_3, color_4, color_5, color_6, color_7, color_8, color_9)
      } else if (n >= 9L) {
        i <- c(color_1, color_2, color_3, color_4, color_5, color_6, color_7, color_8, color_9, color_10)
      }
    }
  }
  attr(f, "max_n") <- max_n
  f
}

