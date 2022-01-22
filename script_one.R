library(readr)
library(tidyverse)


empreendimento_geracao_distribuida <- read_delim("data/empreendimento-geracao-distribuida.csv", 
                                                 delim = ";", escape_double = FALSE, col_types = cols(DataGeracaoConjunto = col_datetime(format = "%Y-%m-%d %H:%M:%S"), 
                                                                                                 CodClasseConsumo = col_character(), 
                                                                                                 CodigoSubgrupoTarifario = col_character(), 
                                                                                                 codUFibge = col_character(), codRegiao = col_character(), 
                                                                                                 CodMunicipioIbge = col_character(), 
                                                                                                 DthConexao = col_date(format = "%Y-%m-%d"), 
                                                                                                 QtdUCRecebeCredito = col_character(), 
                                                                                                 PotenciaInstaladaKW = col_number(), 
                                                                                                 MdaLatitude = col_character(), 
                                                                                                 MdaLongitude = col_character()), 
                                                 locale = locale(decimal_mark = ",", grouping_mark = ".", encoding = "UTF-16"), trim_ws = TRUE)
View(empreendimento_geracao_distribuida)
