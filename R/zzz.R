.onAttach <- function(libname, pkgname) {
  packageStartupMessage("Attaching system fonts")
  sysfonts::font_add("Avenir-brodtekst", system.file("fonts/AvenirLTStd-Roman_0.otf", package = "rrplot2"))
  sysfonts::font_add("Avenir-tittel", system.file("fonts/AvenirLTStd-Black.otf", package = "rrplot2"))
  showtext::showtext_auto()
}
