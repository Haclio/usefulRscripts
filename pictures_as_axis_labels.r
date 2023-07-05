library(tidyverse) #For ggplot
library(ggtext) #To use images as labels

label <- c( #Array of pictures to use as axis labels, first column here to be replaced by the factor levels used
  A = "<img src='A.png' height = *, width = *>",
  B = "<img src='B.png' height = *, width = *>",
  C = "<img src='C.png' height = *, width = *>",
  D = "<img src='D.png' height = *, width = *>",
  E = "<img src='E.png' height = *, width = *>",
  F = "<img src='F.png' height = *, width = *>",
  G = "<img src='G.png' height = *, width = *>",
  H = "<img src='H.png' height = *, width = *>",
  I = "<img src='I.png' height = *, width = *>")

ggplot() +
geom_*() +
theme(axis.text.* = element_markdown(size = *, etc))
