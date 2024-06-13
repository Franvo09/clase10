library(tidyverse)
library(datos)

#1
diamantes

ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte))

#2
ggplot(diamantes) + 
  geom_histogram(mapping = aes(x = y), binwidth = 0.5) +
  ylim(c(0,50))

boxplot(diamantes$y, xlab="Frecuencia", ylab= "y", horizontal = FALSE)



#3
inusual <- diamantes$precio%>% 
  filter(y < | y > ) %>% # Borrar los valores
  select(precio, x, y, z) %>%
  arrange(y)
inusual

#4
ggplot(data = millas) +
  geom_boxplot(mapping = aes(x = reorder(clase, autopista, FUN = median), y = autopista))


ggplot(data = millas)

