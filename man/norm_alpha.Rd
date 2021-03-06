% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/diversity-components.R
\name{norm_alpha}
\alias{norm_alpha}
\title{Normalised alpha (low level diversity component)}
\usage{
norm_alpha(meta)
}
\arguments{
\item{meta}{object of class \code{metacommunity}}
}
\value{
\code{norm_alpha} returns an object of class \code{powermean}
}
\description{
Calculates the low-level diversity component necessary for calculating
normalised alpha diversity.
}
\details{
Values generated from \code{norm_alpha()} may be input into \code{subdiv()}
and \code{metadiv()} to calculate normalised subcommunity and metacommunity
alpha diversity.
}
\examples{
pop <- data.frame(a = c(1,3), b = c(1,1))
row.names(pop) <- paste0("sp", 1:2)
pop <- pop/sum(pop)
meta <- metacommunity(pop)

# Calculate normalised alpha component
a <- norm_alpha(meta)
subdiv(a, 1)
metadiv(a, 1)

}
\references{
R. Reeve, T. Leinster, C. Cobbold, J. Thompson, N. Brummitt,
S. Mitchell, and L. Matthews. 2016. How to partition diversity.
arXiv 1404.6520v3:1–9.
}
