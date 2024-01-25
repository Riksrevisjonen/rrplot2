#' import ggplot2
#' import scales
#' import ggthemes
#' @name imports
NULL

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
#' library(scales)
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

