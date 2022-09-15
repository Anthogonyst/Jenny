library(hexSticker)
library(magick)

imageUrl = "man/figures/guitar.png"

orange = "#d75715"
yellow = "#dfbb4e"

hexSticker::sticker(
  subplot = imageUrl, package = "Jenny", p_size = 32, h_fill = orange,
  s_x = 1.01, s_width = 1.04, s_height = .10, h_color = yellow, p_color = yellow
)
