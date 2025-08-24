#' Return lower boundary for the percentile interval
#‘
#' @param values Vector of numeric values
#' @param CI Float, confidence level. Default is `0.97`
#‘
#' @returns Float
#' @export
#‘ @importFrom stats quantile
#‘
#‘ @examples
#‘ lower_pi(norm(100))
lower_pi <- function(values, CI = 0.97) {
  # Checking validity for CI value
  if (!(is.double(CI) && length(CI) == 1 && !is.na(CI) && CI>=0.0 && CI<=1.0)) {
    stop("`CI` must be a single floating-point (double) number in 0..1 range.")
  }

  unname(stats::quantile(values, (1 - CI) / 2))
}


#' Return upper boundary for the percentile interval
#‘
#' @param values Vector of numeric values
#' @param CI Float, confidence level. Default is `0.97`
#‘
#' @returns Float
#' @export
#' @importFrom stats quantile
#‘
#' @examples
#' upper_pi(rnorm(100))
upper_pi <- function(values, CI = 0.97) {
  # Checking validity for CI value
  if (!(is.double(CI) && length(CI) == 1 && !is.na(CI) && CI>0.0 && CI<1.0)) {
    stop("`CI` must be a single floating-point (double) number in 0..1 range.")
  }
  unname(stats::quantile(values, 1 - (1 - CI) / 2))
}
