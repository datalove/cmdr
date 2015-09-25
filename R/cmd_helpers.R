
#'@export
`%|%` <- function(x,y) paste(x, '|', y)

# `%>%` <- function(x,y) paste(x, '>', y)

#' @export
to_r <- function(x) {
  message(x)
  system(x, intern = TRUE)
}

#' @export
to_disk <- function(x, file_path) {
  command <- paste(x, '>', q(file_path))
  message(command)
  system(command)
  file_path
}
