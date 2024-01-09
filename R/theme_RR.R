require(ggthemes)
library(scales)

#### COLOR PALETTE ####

RR_dark_blue <- "#183271"
RR_scarlet_red <- "#E20046"
RR_teal <- "#169AFD"
RR_green <- "#A6D96A"
RR_purple <- "#8A3FFC"
RR_orange <- "#FF9038"

main_colors <- c(RR_dark_blue, RR_scarlet_red, RR_teal, RR_green, RR_purple, RR_orange)

RR_light_blue = "#E9f8FF"

RR_pal <- function(fill=TRUE) {
  #colors <- deframe(ggthemes::ggthemes_data[["RR"]][["fg"]])
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


scale_color_RR <- function(...) {
  discrete_scale("color", "RR", RR_pal(), ...)
}

scale_fill_RR <- function(...) {
  discrete_scale("fill", "RR", RR_pal(), ...)
}

# Continuous palettes
scale_fill_continuous_RR_red <- function(...) {
  scale_fill_gradient(low = "#FB749D", high = "#B8002A", ...)
}

scale_fill_continuous_RR_blue <- function(...) {
  scale_fill_gradient(low = "#4CA4E6", high = "#01123B", ...)
}

scale_color_continuous_RR_red <- function(...) {
  scale_color_gradient(low = "#FB749D", high = "#B8002A", ...)
}

scale_color_continuous_RR_blue <- function(...) {
  scale_color_gradient(low = "#4CA4E6", high = "#01123B", ...)
}


#### THEME

theme_RR <- function(base_size = 12, base_family = "sans") {

  ret <-
    theme_foundation(base_size = base_size, base_family = base_family) +
    theme(line = element_line(color = "#183271"),
          rect = element_rect(fill = main_colors, color = NA,
                              linetype = 1),
          text = element_text(color = "#183271"),

          ## Axis lines
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
          strip.background = element_rect(fill = RR_light_blue,
                                          color = NA, linetype = 0),
          strip.text = element_text(size = rel(1.25)),
          strip.text.x = element_text(),
          strip.text.y = element_text(angle = -90),
          plot.title = element_text(size = rel(1.5),
                                    hjust = 0, face = "bold",
                                    margin = margin(b = 12,
                                                    unit = "points")),

          # Spacing
          plot.margin = unit(c(1, 0.6, 0.4, 0.4), "cm"),
          complete = TRUE)
  ret
}

geom_bar_RR <- function(..., width = 0.6){
  list(geom_bar(..., width = width),
       scale_y_continuous(expand = expansion(mult = c(0,0.1))))
}

geom_bar_flipped_RR <- function(){
  list(geom_bar_RR(),
       theme(panel.grid.major.x = element_line(color = alpha(RR_dark_blue, 0.5),
                                               linewidth = rel(1.75),
                                               linetype = "dotted", size = 0.6),
             panel.grid.major.y = element_blank(),
             legend.position = "bottom"),
       coord_flip())
}


geom_scatter_RR <- function(..., size = 3){
  list(geom_point(size = size),
       theme(panel.grid.major.x = element_line(color = alpha(RR_dark_blue, 0.5),
                                               linewidth = rel(1.75),
                                               linetype = "dotted", size = 0.6),
             panel.grid.major.y = element_line(color = alpha(RR_dark_blue, 0.5),
                                               linewidth = rel(1.75),
                                               linetype = "dotted", size = 0.6)),
       scale_y_continuous(expand = expansion(mult = c(0.1,0.1))))
}



