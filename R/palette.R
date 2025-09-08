#' import ggplot2
#' import scales
#' import ggthemes
#' @name imports
NULL

bright_red <- "#A40000"      # Bright Red
havelock_blue <- "#6C93E1"   # Havelock Blue
flush_orange <- "#FF7F00"    # Flush Orange
biscay <- "#193271"          # Biscay
monza <- "#E20029"           # Monza
caribbean_green <- "#00BA89" # Caribbean Green
clairvoyant <- "#730F7A"     # Clairvoyant
supernova <- "#FFC200"       # Supernova
deep_sea_green <- "#0E6669"  # Deep Sea Green
black <- "#000000"           # Black

main_colors <- c(bright_red, havelock_blue, flush_orange,
                 biscay, monza, caribbean_green)

RR_light_blue = "#E9f8FF"
RR_background_color = "white"
RR_gridlines_color = "gray80"
RR_gridlines_size = 0.2
RR_font_color = "black"

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
        i <- bright_red
      } else if (n == 2L) {
        i <- c(bright_red, havelock_blue)
      } else if (n == 3L) {
        i <- c(bright_red, havelock_blue, flush_orange)
      } else if (n == 4L) {
        i <- c(bright_red, havelock_blue, flush_orange, biscay)
      } else if (n == 5L) {
        i <- c(bright_red, havelock_blue, flush_orange, biscay, monza)
      } else if (n == 6L) {
        i <- c(bright_red, havelock_blue, flush_orange, biscay, monza, caribbean_green)
      } else if (n == 7L) {
        i <- c(bright_red, havelock_blue, flush_orange, biscay, monza, caribbean_green, clairvoyant)
      } else if (n == 8L) {
        i <- c(bright_red, havelock_blue, flush_orange, biscay, monza, caribbean_green, clairvoyant, supernova)
      } else if (n == 9L) {
        i <- c(bright_red, havelock_blue, flush_orange, biscay, monza, caribbean_green, clairvoyant, supernova, deep_sea_green)
      } else if (n >= 9L) {
        i <- c(bright_red, havelock_blue, flush_orange, biscay, monza, caribbean_green, clairvoyant, supernova, deep_sea_green, black)
      }
    }
  } else {
    max_n <- 10
    f <- function(n) {
      check_pal_n_RR(n, max_n)
      if (n == 1L) {
        i <- bright_red
      } else if (n == 2L) {
        i <- c(bright_red, havelock_blue)
      } else if (n == 3L) {
        i <- c(bright_red, havelock_blue, flush_orange)
      } else if (n == 4L) {
        i <- c(bright_red, havelock_blue, flush_orange, biscay)
      } else if (n == 5L) {
        i <- c(bright_red, havelock_blue, flush_orange, biscay, monza)
      } else if (n == 6L) {
        i <- c(bright_red, havelock_blue, flush_orange, biscay, monza, caribbean_green)
      } else if (n == 7L) {
        i <- c(bright_red, havelock_blue, flush_orange, biscay, monza, caribbean_green, clairvoyant)
      } else if (n == 8L) {
        i <- c(bright_red, havelock_blue, flush_orange, biscay, monza, caribbean_green, clairvoyant, supernova)
      } else if (n == 9L) {
        i <- c(bright_red, havelock_blue, flush_orange, biscay, monza, caribbean_green, clairvoyant, supernova, deep_sea_green)
      } else if (n >= 9L) {
        i <- c(bright_red, havelock_blue, flush_orange, biscay, monza, caribbean_green, clairvoyant, supernova, deep_sea_green, black)
      }
    }
  }
  attr(f, "max_n") <- max_n
  f
}

