% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dist2sim.R
\name{dist2sim}
\alias{dist2sim}
\title{Distance to similarity}
\usage{
dist2sim(dist, transform, k = 1, normalise = TRUE, max_d)
}
\arguments{
\item{dist}{object of class \code{distance}}

\item{transform}{object of class \code{character}, can be either "linear"
or "exponential"}

\item{k}{scaling parameter}

\item{normalise}{object of class \code{logical}, which when TRUE will
normalise distances to one}

\item{max_d}{object of class \code{numeric}}
}
\value{
\code{dist2sim(x)} returns an object of class \code{similarity}.
}
\description{
Converts \code{distance} objects into \code{similarity} objects.
}
\details{
Distances can be transformed either *linearly* or *exponentially*. That is
\code{1 - k * dist} for non-negative values, or \code{exp(-k * dist)},
respectively. If \code{normalise} is true, then \code{dist = dist/max_d}.
}
