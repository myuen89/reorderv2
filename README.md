
<!-- README.md is generated from README.Rmd. Please edit that file -->



**NOTE: This is a toy package created for expository purposes. It is not meant to actually be useful. If you want a package for factor handling, please see [forcats](https://cran.r-project.org/package=forcats).**

Reorderv2
---------

Graphing factors tend to be messy, since they are usually misaligned. Reorder is a function used to order factors in ascending order. Reorderv2 is a package which will order factors in descending order.

### Installation

``` {.r}
devtools::install_github("myuen89/reorderv2")
#> Using GitHub PAT from envvar GITHUB_PAT
#> Skipping install of 'reorderv2' from a github remote, the SHA1 (ababc30b) has not changed since last install.
#>   Use `force = TRUE` to force installation
```

### Quick demo

Reordering factor levels in descending order. Will not work if input is not of class factor

``` {.r}
library(dplyr)
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
library(reorderv2)

x <- factor(c('leopard', 'kilo', 'gryphon', 'foxtrot'))
y <- factor(c('foxtrot', 'gryphon', 'kilo', 'leopard'))
z <- c("hello", "blue", "cake", "wall")

reorder_desc(x)
#> [1] leopard kilo    gryphon foxtrot
#> attr(,"scores")
#> leopard    kilo gryphon foxtrot 
#>      -1      -2      -3      -4 
#> Levels: foxtrot gryphon kilo leopard
as.character(y)
#> [1] "foxtrot" "gryphon" "kilo"    "leopard"
reorder_desc(z)
#> Error. Input is not of class factors, it is of class character
```
### Reflections
I follows the steps in the [stat545 website](http://stat545.com/cm110_packages.html) and it is extremely helpful. But to be honest I still don't really understand what is happending under the hood that makes it all happen. All I know is that it works. I suppse if I were to every design a package in the future I can just follows the guidlines set out above, but I expect that any errors would be difficult to solve. 
