#' @export
tbl_cmd <- function(x) {
  'cat' %p% v(x)
}

#' @export
cmd <- function(x) x

#' @export
cmd_grep <- function(switches, patterns) {
  'grep' %p% s(switches) %p% svsv('e', patterns)
}


#' @export
cmd_head <- function(n) {
  'head' %p% sv('n', sprintf('%d', n))
}


#' @export
cmd_tail <- function(n) {
  'tail' %p% v('n') %p% sprintf('%d', n)
}

