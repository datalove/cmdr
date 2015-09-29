#' @export
tbl_cmd <- function(x) {
  out <- list(files = x, cmd_str = NULL)
  class(out) <- "cmd"
  out
}

#' @export
cmd <- function(input, x) {
  x %p% get_files(input) %>% update_cmd(input)
}

#' @export
cmd_exec <- function(input, output = NULL) {
  
  if(!is.null(output))
    input$cmd_str <- paste(input$cmd_str, '>', q(output))
  
  print(input)  
  
  if(Sys.info()[1] == "Windows")
    shell(input$cmd_str)
  else
    system(input$cmd_str)
  
  input
}


#_______________________________
# Singe-file operators     -----
#_______________________________

#' @export
cmd_grep <- function(input, switches, patterns) {
  'grep' %p% s(switches) %p% svsv('e', patterns) %p% get_files(input) %>% update_cmd(input)
}


#' @export
cmd_head <- function(input, n) {
  'head' %p% sv('n', sprintf('%d', n)) %p% get_files(input) %>% update_cmd(input)
}


#' @export
cmd_tail <- function(input, n) {
  'tail' %p% sv('n', sprintf('%d', n)) %p% get_files(input) %>% update_cmd(input)
}


#_______________________________
# Multi-file operators     -----
#_______________________________

# cmd_find <- function(x) {
#   'find' %p% x
# }
# 
# cmd_cat <- function(input, files) {
#   cat %p% files
# }



