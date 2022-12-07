library(ggplot2)
install.packages("hexSticker")
library(hexSticker)

# make a heart with math!
t <- seq(0, 2*pi, by=0.05) |> c(0)
heart <- data.frame(
  x = 16*sin(t)^3,
  y = 13*cos(t)-5*cos(2*t)-2*cos(3*t)-cos(4*t)
)

heartplot <- ggplot(heart, aes(x, y)) +
  geom_point(color = "red") +
  theme_void()

# customise your hex sticker
hexSticker::sticker(
  filename = "inst/figures/logo.png",
  # subplot aesthetics
  subplot = heartplot,
  s_width = 1.0, s_height = .85,
  s_x=1, s_y=.75,
  # package name aesthetics
  package = "demopkg",
  p_size = 24,
  p_color = "red",
  # hexagon aesthetics
  h_size = 1,
  h_fill = "pink",
  h_color = "red",
  # url aesthetics
  url = "psyteachr.github.io/demopkg",
  u_size = 5.4,
  u_color = "white"
) |> plot() # preview with plot()
install.packages("badger")
library(badger)
badge_doi("10.1089/jwh.2018.7448", "lightsalmon")
