check_pal_n_RR <- function(n, max_n) {
  if (n > max_n) {
    warning("This palette can handle a maximum of ", max_n, " values.",
            "You have supplied ", n, ".")
  } else if (n < 0) {
    stop("`n` must be a non-negative integer")
  }
}

