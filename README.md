
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Autocorrelação Espacial e Aprendizado de máquina

*Laís de Souza Teixeira & Alan Rodrigo Panosso*

``` r
## Instalando pacotes (se necessário)
# install.packages("devtools")
# Sys.getenv("GITHUB_PAT")
# Sys.unsetenv("GITHUB_PAT")
# Sys.getenv("GITHUB_PAT")
# devtools::install_github("arpanosso/fco2r")

library(tidyverse)
library(geobr)
library(fco2r)
library(skimr)
```

``` r
data_fco2 %>% 
  head()
#>   experimento       data       manejo tratamento revolvimento_solo data_preparo
#> 1    Espacial 2001-07-10 convencional      AD_GN             FALSE   2001-07-01
#> 2    Espacial 2001-07-10 convencional      AD_GN             FALSE   2001-07-01
#> 3    Espacial 2001-07-10 convencional      AD_GN             FALSE   2001-07-01
#> 4    Espacial 2001-07-10 convencional      AD_GN             FALSE   2001-07-01
#> 5    Espacial 2001-07-10 convencional      AD_GN             FALSE   2001-07-01
#> 6    Espacial 2001-07-10 convencional      AD_GN             FALSE   2001-07-01
#>    conversao cobertura    cultura  x  y longitude_muni latitude_muni estado
#> 1 1970-01-01      TRUE milho_soja  0  0       782062.7       7647674     SP
#> 2 1970-01-01      TRUE milho_soja 40  0       782062.7       7647674     SP
#> 3 1970-01-01      TRUE milho_soja 80  0       782062.7       7647674     SP
#> 4 1970-01-01      TRUE milho_soja 10 10       782062.7       7647674     SP
#> 5 1970-01-01      TRUE milho_soja 25 10       782062.7       7647674     SP
#> 6 1970-01-01      TRUE milho_soja 40 10       782062.7       7647674     SP
#>     municipio ID  prof  FCO2    Ts Us  pH MO  P   K Ca Mg H_Al   SB  CTC  V Ds
#> 1 Jaboticabal  1 0-0.1 1.080 18.73 NA 5.1 20 46 2.4 25 11   31 38.4 69.4 55 NA
#> 2 Jaboticabal  2 0-0.1 0.825 18.40 NA 5.1 24 26 2.2 30 11   31 43.2 74.2 58 NA
#> 3 Jaboticabal  3 0-0.1 1.950 19.20 NA 5.8 25 46 5.3 41 25   22 71.3 93.3 76 NA
#> 4 Jaboticabal  4 0-0.1 0.534 18.28 NA 5.3 23 78 3.6 27 11   28 41.6 69.6 60 NA
#> 5 Jaboticabal  5 0-0.1 0.893 18.35 NA 5.5 23 60 3.4 33 15   27 50.6 77.9 65 NA
#> 6 Jaboticabal  6 0-0.1 0.840 18.47 NA 5.7 21 46 2.9 38 20   22 60.9 82.9 73 NA
#>   Macro Micro VTP PLA AT SILTE ARG HLIFS
#> 1    NA    NA  NA  NA NA    NA  NA    NA
#> 2    NA    NA  NA  NA NA    NA  NA    NA
#> 3    NA    NA  NA  NA NA    NA  NA    NA
#> 4    NA    NA  NA  NA NA    NA  NA    NA
#> 5    NA    NA  NA  NA NA    NA  NA    NA
#> 6    NA    NA  NA  NA NA    NA  NA    NA
```
