# Auslosung
library(tidyverse)
set.seed(2505)
source("https://soscisurvey.ph-karlsruhe.de/FOME23/?act=kgcQZxRcN5int46JCEkJYbDm&rScript")

# Reihenfolge: amazon, KA, KA, KA, KA
ds |> 
  filter(BG02 == "Ja. Ich bin damit einverstanden, dass meine anonymisierten Antworten und Moodle-Nutzungsdaten unter den beschriebenen Bedingungen für wissenschaftliche Zwecke verwendet werden.") |> 
  select(ZG03_01) |> 
  sample_n(5)
