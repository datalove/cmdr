`%p%`  <- function(x,y) paste(x,y)
`%pc%` <- function(x,y) paste(x,y, collapse =  ' ')

# quote a stringr
q <- function(x) shQuote(x)


# add switches
s <- function(x, vec = FALSE) {
  vec <- if(vec) NULL else ' '
  paste('-', x, sep = '', collapse = vec)
}

# add values
v <- function(x, vec = FALSE) {
  vec <- if(vec) NULL else ' '
  q(x) %>% paste0(collapse = vec)
}

# switch-values in this format:
# -i 'one'
sv   <- function(x,y) s(x) %p% v(y)

# switch-values in this format:
# -i 'one' 'two'
svv  <- function(x,y) sv(x,y)

# switch-values in this format:
# -i 'one' -i 'two'
svsv <- function(x,y) rep(s(x,TRUE),length(y)) %pc% v(y,TRUE)




