% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/inddiv.R
\name{inddiv}
\alias{inddiv}
\alias{inddiv,powermean-method}
\alias{inddiv,relativeentropy-method}
\alias{inddiv,metacommunity-method}
\title{Calculate individual-level diversity}
\usage{
inddiv(data, qs)

\S4method{inddiv}{powermean}(data, qs)

\S4method{inddiv}{relativeentropy}(data, qs)

\S4method{inddiv}{metacommunity}(data, qs)
}
\arguments{
\item{data}{\code{matrix} of mode \code{numeric}; containing diversity
components}

\item{qs}{\code{vector} of mode \code{numeric} containing \emph{q} values}
}
\value{
\code{inddiv()} returns a standard output of class \code{rdiv}
}
\description{
Generic function for calculating individual-level diversity.
}
\details{
\code{data} may be input as three different classes:
\itemize{
\item{\code{power_mean}: calculates raw and normalised subcommunity alpha, rho
or gamma diversity by taking the powermean of diversity components}
\item{\code{relativeentropy}: calculates raw or normalised subcommunity beta
diversity by taking the relative entropy of diversity components}
\item{\code{metacommunity}: calculates all subcommunity measures of diversity}
}
}
\examples{
# Define metacommunity
pop <- cbind.data.frame(A = c(1,1), B = c(2,0), C = c(3,1))
row.names(pop) <- paste0("sp", 1:2)
pop <- pop/sum(pop)
meta <- metacommunity(pop)

# Calculate subcommunity gamma diversity (takes the power mean)
g <- raw_gamma(meta)
inddiv(g, 0:2)

# Calculate subcommunity beta diversity (takes the relative entropy)
b <- raw_beta(meta)
inddiv(b, 0:2)

# Calculate all measures of individual diversity
inddiv(meta, 0:2)

}
\references{
Reeve, R., T. Leinster, C. Cobbold, J. Thompson, N. Brummitt,
S. Mitchell, and L. Matthews. 2016. How to partition diversity.
arXiv 1404.6520v3:1–9.
}
\seealso{
\code{\link{subdiv}} for subcommunity-level diversity and
\code{\link{metadiv}} for metacommunity-level diversity.
}
