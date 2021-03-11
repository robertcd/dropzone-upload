library(plumber)

#* @apiTitle Plumber Example API


#* @filter cors
function(res) {
  res$setHeader('Access-Control-Allow-Origin','*')
  plumber::forward()
}

#* Plot a histogram
#* @png
#* @get /plot
function() {
  rand <- rnorm(100)
  hist(rand)
}

#' @post /echo
function(req){
  print(Rook::Multipart$parse(req))
  list(formContents = Rook::Multipart$parse(req))
}

#* Return the sum of two numbers
#* @param a The first number to add
#* @param b The second number to add
#* @post /sum
function(a, b) {
  as.numeric(a) + as.numeric(b)
}


