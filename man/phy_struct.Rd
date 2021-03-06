% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/phy_struct.R
\name{phy_struct}
\alias{phy_struct}
\title{Calculate phylogenetic structure matrix}
\usage{
phy_struct(tree, partition)
}
\arguments{
\item{tree}{object of class \code{phylo}}

\item{partition}{two-dimensional \code{matrix} of mode \code{numeric}
with rows as types (species), columns as subcommunities, and each
element containing the relative abundance of types in each subcommunity
relative to the metacommunity as a whole. In the phylogenetic case, this
corresponds to the proportional abundance of historical species, which is
calculated from the proportional abundance of terminal taxa}
}
\value{
\code{phy_struct()} returns a \code{list} containing:
\tabular{ll}{
\code{$structure} \tab - each row denotes historical species, columns
denote terminal taxa, and elements contain 'branch lengths' \cr
\code{$tbar} - the average distance from root to tip for all terminal
taxa \cr
\code{$parameters} \tab - information associated with each historical
species \cr
\code{$tree} \tab - object of class \code{phylo} \cr
}
}
\description{
Converts an object into class \code{phylo} into class \code{phy_struct}.
}
