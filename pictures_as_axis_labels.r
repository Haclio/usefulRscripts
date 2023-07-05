library(tidyverse)
showtext_opts(dpi = 320)
showtext_auto(enable = TRUE)
font_add(family = "fb", regular = "Font Awesome 6 Brands-Regular-400.otf") #Brand logos

cap <- paste0("<span style='font-family:fb;'>&#xf09b; </span> Haclio  |", #Caption with Fontawesome brands font
              "<span style='font-family:fb;'> &#xf099; </span>@LouisNadalin | Source: * | etc")

label <- c( #Array of pictures to use as axis labels, letters here replace axis labels 
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