crypt <-
function(passwords, salt = "D8")
{
  .Call("R_crypt", as.character(passwords), rep(as.character(salt), length = length(passwords)), PACKAGE = "Rcrypt")
}
