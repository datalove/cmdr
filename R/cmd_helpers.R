

`%|%` <- function(x,y) {
  if(is.null(x))
    y
  else
    paste(x, '|', y)
    
}

update_cmd <- function(cmd_str, input) {
  input$cmd_str <- get_cmd(input) %|% cmd_str
  input
}

#' @export
get_cmd <- function(input) input$cmd_str

#' @export
get_files <- function(x) {
  if(is.null(x$cmd_str))
    v(x$get_files)
  else
    NULL
}

