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
  unname(stats::quantile(values, (1 - CI) / 2))
}
