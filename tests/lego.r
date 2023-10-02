
lego <- data.frame(x = as.factor(rep(seq(1, 20, 1))), y = rep(1:20, each = 20), color = sample(c25, size = 400, replace = TRUE))
gg <- ggplot(lego, aes(x = x, y = y)) +
    geom_point(aes(color = color), shape = 15, size = 17) +
    geom_point(aes(y = y - 0.05), shape = "\u274D", size = 8, color = "grey10", stroke = 4) +
    geom_point(shape = 0, size = 17, stroke = 1.1) +
    coord_fixed() +
    theme_void() +
    scale_color_identity()
gg

ggsave("test.png", gg, dpi = 300)
