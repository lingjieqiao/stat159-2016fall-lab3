range_value <- function(x, na.rm) {
  if (na.rm = TRUE) {
    max <- max(x, na.rm = TRUE)
    min <- min(x, na.rm = TRUE)
    max - min
  } else {
    max(x) - min(x)
  }
}
