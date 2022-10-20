library(tidyverse)

data(iris)

iris %>%
  as_tibble() %>%
  group_by(Species)%>%
  summarize(mean_sepeal_length = mean(Sepal.Length))

iris %>%
  as_tibble() %>%
  ggplot(aes(x = Species, y = Sepal.Length))+
  geom_boxplot()
