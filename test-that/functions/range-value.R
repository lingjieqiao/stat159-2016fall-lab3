range_value <- function(x, na.rm = TRUE) {
  if (na.rm = TRUE) {
    max <- max(x, na.rm = TRUE)
    min <- min(x, na.rm = TRUE)
    max - min
  } else {
    max(x) - min(x)
  }
}
