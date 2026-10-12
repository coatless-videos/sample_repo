\name{group_means}
\alias{group_means}
\alias{plot_group_means}
\title{
  Average a column within groups
}
\description{
  \code{group_means} averages one column of a data frame within the
  groups of another, and \code{plot_group_means} draws those averages as
  bars.
}
\usage{
group_means(data, group, value)
plot_group_means(data, group, value)
}
\arguments{
  \item{data}{A data frame.}
  \item{group}{Name of the column to group by.}
  \item{value}{Name of the column to average.}
}
\value{
  A data frame with one row for each group, or a \code{ggplot} object.
}
\examples{
  group_means(mtcars, "cyl", "mpg")
  plot_group_means(mtcars, "cyl", "mpg")
}
