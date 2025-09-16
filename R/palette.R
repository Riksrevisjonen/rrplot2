#' import ggplot2
#' import scales
#' import ggthemes
#' import sysfonts
#' import showtext
#' @name imports
NULL

color_1 <- "#A40000"      # Bright Red
color_2 <- "#6C93E1"   # Havelock Blue
color_3 <- "#FF7F00"    # Flush Orange
color_4 <- "#193271"          # Biscay
color_5 <- "#E20029"           # Monza
color_6 <- "#00BA89" # Caribbean Green
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

sysfonts::font_add("Avenir-brodtekst", "K:/Riksrevisjonen/Visualisering/AvenirLTStd-Roman_0.otf")
sysfonts::font_add("Avenir-tittel", "K:/Riksrevisjonen/Visualisering/AvenirLTStd-Black.otf")
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
        i <- "#A40000"
      } else if (n == 2L) {
        i <- c("#00BA89", "#193271")
      } else if (n == 3L) {
        i <- c("#A40000", "#00BA89", "#193271")
      } else if (n == 4L) {
        i <- c("#A40000", "#00BA89", "#193271", "#6C93E1")
      } else if (n == 5L) {
        i <- c("#A40000", "#00BA89", "#193271", "#6C93E1", "#FF7F00")
      } else if (n == 6L) {
        i <- c("#A40000", "#00BA89", "#193271", "#6C93E1", "#FF7F00", "#E20029")
      } else if (n == 7L) {
        i <- c("#A40000", "#00BA89", "#193271", "#6C93E1", "#FF7F00", "#E20029", "#FFC200")
      } else if (n == 8L) {
        i <- c("#A40000", "#00BA89", "#193271", "#6C93E1", "#FF7F00", "#E20029", "#FFC200", "#730F7A")
      } else if (n == 9L) {
        i <- c("#A40000", "#00BA89", "#193271", "#6C93E1", "#FF7F00", "#E20029", "#FFC200", "#730F7A", "#0E6669")
      } else if (n >= 9L) {
        i <- c("#A40000", "#00BA89", "#193271", "#6C93E1", "#FF7F00", "#E20029", "#FFC200", "#730F7A", "#0E6669", "#000000")
      }
    }
  } else {
    max_n <- 10
    f <- function(n) {
      check_pal_n_RR(n, max_n)
      if (n == 1L) {
        i <- "#A40000"
      } else if (n == 2L) {
        i <- c("#00BA89", "#193271")
      } else if (n == 3L) {
        i <- c("#A40000", "#00BA89", "#193271")
      } else if (n == 4L) {
        i <- c("#A40000", "#00BA89", "#193271", "#6C93E1")
      } else if (n == 5L) {
        i <- c("#A40000", "#00BA89", "#193271", "#6C93E1", "#FF7F00")
      } else if (n == 6L) {
        i <- c("#A40000", "#00BA89", "#193271", "#6C93E1", "#FF7F00", "#E20029")
      } else if (n == 7L) {
        i <- c("#A40000", "#00BA89", "#193271", "#6C93E1", "#FF7F00", "#E20029", "#FFC200")
      } else if (n == 8L) {
        i <- c("#A40000", "#00BA89", "#193271", "#6C93E1", "#FF7F00", "#E20029", "#FFC200", "#730F7A")
      } else if (n == 9L) {
        i <- c("#A40000", "#00BA89", "#193271", "#6C93E1", "#FF7F00", "#E20029", "#FFC200", "#730F7A", "#0E6669")
      } else if (n >= 9L) {
        i <- c("#A40000", "#00BA89", "#193271", "#6C93E1", "#FF7F00", "#E20029", "#FFC200", "#730F7A", "#0E6669", "#000000")
      }
    }
  }
  attr(f, "max_n") <- max_n
  f
}


#' RR traffic color palette (green)
#' Defines the official traffic color palette of the Norwegian Office of the Auditor General.
#'
#' @param fill Determines if the palette is used in a fill or color scale function.
#'
#' @export
#'
#' @examples
#' library(scales)
#' show_col(RR_trafikk_pal_green()(5))

RR_trafikk_pal_green <- function(fill=TRUE) {

  if (fill) {
    max_n <- 5

    f <- function(n) {
      check_pal_n_RR(n, max_n)
      if (n == 1L) {
        i <- "#A40000"
      } else if (n == 2L) {
        i <- c("#A40000", "#178c49")
      } else if (n == 3L) {
        i <- c("#a40000", "#ffc200", "#178c49")
      } else if (n == 4L) {
        i <- c("#A40000", "#ff7f00", "#00ba89", "#178c49")
      } else if (n == 5L) {
        i <- c("#A40000", "#ff7f00", "#ffc200", "#00ba89", "#178c49")
      }
    }
  } else {
    max_n <- 10
    f <- function(n) {
      check_pal_n_RR(n, max_n)
      if (n == 1L) {
        i <- "#A40000"
      } else if (n == 2L) {
        i <- c("#A40000", "#178c49")
      } else if (n == 3L) {
        i <- c("#a40000", "#ffc200", "#178c49")
      } else if (n == 4L) {
        i <- c("#A40000", "#ff7f00", "#00ba89", "#178c49")
      } else if (n == 5L) {
        i <- c("#A40000", "#ff7f00", "#ffc200", "#00ba89", "#178c49")
      }
    }
  }
  attr(f, "max_n") <- max_n
  f
}

#' RR traffic color palette (blue)
#' Defines the official traffic color palette of the Norwegian Office of the Auditor General.
#'
#' @param fill Determines if the palette is used in a fill or color scale function.
#'
#' @export
#'
#' @examples
#' library(scales)
#' show_col(RR_trafikk_pal_blue()(5))

RR_trafikk_pal_blue <- function(fill=TRUE) {

  if (fill) {
    max_n <- 5

    f <- function(n) {
      check_pal_n_RR(n, max_n)
      if (n == 1L) {
        i <- "#A40000"
      } else if (n == 2L) {
        i <- c("#A40000", "#81a0f9")
      } else if (n == 3L) {
        i <- c("#a40000", "#ffc200", "#193271")
      } else if (n == 4L) {
        i <- c("#A40000", "#ff7f00", "#81a0f9", "#193271")
      } else if (n == 5L) {
        i <- c("#A40000", "#ff7f00", "#ffc200", "#81a0f9", "#193271")
      }
    }
  } else {
    max_n <- 10
    f <- function(n) {
      check_pal_n_RR(n, max_n)
      if (n == 1L) {
        i <- "#A40000"
      } else if (n == 2L) {
        i <- c("#A40000", "#81a0f9")
      } else if (n == 3L) {
        i <- c("#a40000", "#ffc200", "#193271")
      } else if (n == 4L) {
        i <- c("#A40000", "#ff7f00", "#81a0f9", "#193271")
      } else if (n == 5L) {
        i <- c("#A40000", "#ff7f00", "#ffc200", "#81a0f9", "#193271")
      }
    }
  }
  attr(f, "max_n") <- max_n
  f
}

