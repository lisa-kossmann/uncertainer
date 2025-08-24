# uncertainr
Collection of Functions To Characterize Uncertainty. Includes functions to compute percentile intervals for an empirical distribution.

## Installation
To install from CRAN
``` r
install.packages("installr")
```
To install from github
``` r
library("devtools")
install_github("alexander-pastukhov/installr", dependencies=TRUE)
```
## Usage
``` r
library(installr)
lower_pi(rnorm(100))
```
