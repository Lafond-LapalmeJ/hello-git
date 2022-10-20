# load packages
library(tidyverse)

# load iris dataset
data(iris)

# Table: mean sepal length by species
iris %>%
  as_tibble() %>%
  group_by(Species)%>%
  summarize(mean_sepeal_length = mean(Sepal.Length))

# Boxplot sepal length by species
iris %>%
  as_tibble() %>%
  ggplot(aes(x = Species, y = Sepal.Length))+
  geom_boxplot(outlier.shape = NA)+
  geom_jitter(width = 0.2, size = 1)+
  labs(x = "Iris species", y = "Sepal Length")

