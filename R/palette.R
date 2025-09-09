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

RR_pal <- function(fill = TRUE) {
  max_n <- 10
  colors <- c(color_1, color_2, color_3, color_4, color_5, color_6, color_7, color_8, color_9, color_10)
  f <- function(n) {
    check_pal_n_RR(n, max_n)
    if (n >= 10L) {
      colors
    } else {
      colors[seq_len(n)]
    }
  }
  attr(f, "max_n") <- max_n
  f
}

