library(showtext) #To import the font
showtext_opts(dpi = 320)
showtext_auto(enable = TRUE)
font_add(family = "fb", regular = "Font Awesome 6 Brands-Regular-400.otf") #Brand logos

cap <- paste0("<span style='font-family:fb;'>&#xf09b; </span> Haclio  |", #Caption with Fontawesome brands font
              "<span style='font-family:fb;'> &#xf099; </span>@LouisNadalin | Source: * | etc")

ggplot() +
geom_*() +
theme(plot.caption = element_markdown(color = *, margin = margin(1, 1, 1, 1), size = *, vjust = *, hjust = *))