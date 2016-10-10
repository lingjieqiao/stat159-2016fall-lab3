missing_values <- function(x) {
  sum(is.na(x)) 
}

range_value <- function(x) {
  max(x) - min(x)
}
