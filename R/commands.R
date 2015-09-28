#' @export
tbl_cmd <- function(x) {
  'cat' %p% v(x)
}

#' @export
cmd <- function(input, x) input %|% x

#' @export
cmd_grep <- function(input, switches, patterns) {
  input %|% 'grep' %p% s(switches) %p% svsv('e', patterns)
}


#' @export
cmd_head <- function(input, n) {
  input %|% 'head' %p% sv('n', sprintf('%d', n))
}


#' @export
cmd_tail <- function(input, n) {
  input %|% 'tail' %p% v('n') %p% sprintf('%d', n)
}

#' @export
cmd_find <- function(x) {
  'find' %p% x
}

#' @export
cmd_cat <- function(input, files) {
  cat %p%
}


#' @export
cmd_exec <- function(input) {
  message(input)
  system(input)
}
