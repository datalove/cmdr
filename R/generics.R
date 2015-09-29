#' @export
print.cmd <- function(x) {
  message('files: ',x$files)
  message('command: ', x$cmd_str)
}
