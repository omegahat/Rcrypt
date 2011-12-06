\name{crypt}
\alias{crypt}
\title{Encrypt a string}
\description{
  This function encrypts one or more strings (e.g. passwords)
  and returns the encrypted string that can be made public.
  The function uses the NBS Data  Encryption Standard (DES)
  method.

  I use this to programmatically generate collections of passwords
  for computer or database accounts.
}
\usage{
crypt(passwords, salt = "D8")
}
\arguments{
  \item{passwords}{}
  \item{salt}{a "seed" for the encryption}
}
\value{
  A character vector with as many elements as there are elements in
  \code{passwords}.
}
\references{See man crypt}
\author{Duncan Temple Lang}

\examples{
 crypt("hi there")
 crypt("hi there", "A2")
}
\keyword{programming}
