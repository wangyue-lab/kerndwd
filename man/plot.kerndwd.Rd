\name{plot.kerndwd}
\alias{plot.kerndwd}
\title{plot coefficients}
\description{
Plot the solution paths for a fitted \code{\link{kerndwd}} object.}
\usage{
\method{plot}{kerndwd}(x, color=FALSE, ...)
}
\arguments{
  \item{x}{A fitted ``\code{\link{kerndwd}}"" model.}
	\item{color}{If \code{TRUE}, plots the curves with rainbow colors; otherwise, with gray colors (default).}
	\item{\dots}{Other graphical parameters to \code{plot}.}
}
\details{
Plots the solution paths as a coefficient profile plot. This function is modified based on the \code{plot} function from the \code{glmnet} package.
}
\author{Boxiang Wang and Hui Zou\cr
Maintainer: Boxiang Wang  \email{boxiang-wang@uiowa.edu}}
\references{
Wang, B. and Zou, H. (2018)
``Another Look at Distance Weighted Discrimination," 
\emph{Journal of Royal Statistical Society, Series B}, \bold{80}(1), 177--198. \cr
\url{https://rss.onlinelibrary.wiley.com/doi/10.1111/rssb.12244}\cr
Friedman, J., Hastie, T., and Tibshirani, R. (2010), "Regularization paths for generalized linear models via coordinate descent," \emph{Journal of Statistical Software}, \bold{33}(1), 1--22.\cr
\url{https://www.jstatsoft.org/v33/i01/paper}
}

\seealso{\code{kerndwd}, \code{predict.kerndwd}, \code{coef.kerndwd}, \code{plot.kerndwd}, and \code{cv.kerndwd}.}
 
\examples{
data(BUPA)
BUPA$X = scale(BUPA$X, center=TRUE, scale=TRUE)
lambda = 10^(seq(-3, 3, length.out=10))
kern = rbfdot(sigma=sigest(BUPA$X))
m1 = kerndwd(BUPA$X, BUPA$y, kern, qval=1, 
  lambda=lambda, eps=1e-5, maxit=1e5)
plot(m1, color=TRUE)
}

