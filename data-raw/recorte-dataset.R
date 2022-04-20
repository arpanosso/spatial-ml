library(fco2r)
library(tidyverse)

glimpse(data_fco2)
dados_lais <- data_fco2 %>%
  filter(experimento == "Espacial",
         data >= "2015-01-01" & data <= "2018-01-01")

dados_lais$tratamento  %>% unique()

readr::write_rds(dados_lais,"data/dados_lais.rds")
