% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/metadiv.R
\name{metadiv}
\alias{metadiv}
\alias{metadiv,powermean-method}
\alias{metadiv,relativeentropy-method}
\alias{metadiv,metacommunity-method}
\title{Metacommunity-level diversity}
\usage{
metadiv(data, qs)

\S4method{metadiv}{powermean}(data, qs)

\S4method{metadiv}{relativeentropy}(data, qs)

\S4method{metadiv}{metacommunity}(data, qs)
}
\arguments{
\item{data}{\code{matrix} of mode \code{numeric}; containing diversity
components}

\item{qs}{\code{vector} of mode \code{numeric} containing \emph{q} values}
}
\value{
\code{metadiv()} returns a standard output of class \code{rdiv}
}
\description{
Generic function for calculating metacommunity-level diversity.
}
\details{
\code{data} may be input as one of three different classes:
\itemize{
\item{\code{powermean}: raw or normalised metacommunity alpha, rho or gamma
diversity components; will calculate metacommunity-level raw or normalised
metacommunity alpha, rho or gamma diversity}
\item{\code{relativeentropy}: raw or normalised metacommunity beta
diversity components; will calculate metacommunity-level raw or normalised
metacommunity beta diversity}
\item{\code{metacommunity}: will calculate all metacommunity measures of
diversity}
}
}
\examples{
# Define metacommunity
pop <- data.frame(a = c(1,3), b = c(1,1))
pop <- pop / sum(pop)
meta <- metacommunity(pop)

# Calculate metacommunity gamma diversity (takes the power mean)
g <- raw_gamma(meta)
metadiv(g, 0:2)

# Calculate metacommunity beta diversity (takes the relative entropy)
b <- raw_beta(meta)
metadiv(b, 0:2)

# Calculate all measures of metacommunity diversity
metadiv(meta, 0:2)

}
\references{
Reeve, R., T. Leinster, C. Cobbold, J. Thompson, N. Brummitt,
S. Mitchell, and L. Matthews. 2016. How to partition diversity.
arXiv 1404.6520v3:1–9.
}
\seealso{
\code{\link{inddiv}} for type-level diversity and
\code{\link{subdiv}} for subcommunity-level diversity.
}
