# Tin Skoric
# https://tins.page/
# 2023

# The themes included here are some custom themes I have made that I often use
# in my works. The main theme here is "theme_foil" which I use for all writings
# posted up on my personal website. The others are mostly variations on that.
# Use these themes if you want, it would be super cool.

library(ggplot2)
library(extrafont)

# theme_foil palette

foil_colors_ <- function(...) {
  foil_colors_list <- c(
    `cal poly green` = "#0F4F10",
    `coral` = "#F7854E",
    `dark red` = "#8E0F10",
    `eerie black` = "#1D1E20",
    `golden brown` = "#8E6210",
    `gray` = "#838485",
    `lavender (floral)` = "#B679C8",
    `olive` = "#8E8F10",
    `platinum` = "#E8E9E9",
    `plum` = "#865087",
    `slate blue` = "#605CB7",
    `steel blue` = "#4D78A3",
    `ultramarine` = "#0F0F90",
    `wisteria` = "#B0A9DD"
  )
  colors_ <- c(...)
  if(is.null(colors_))
    return(foil_colors_list)
  foil_colors_list[colors_]
}

foil_palette_ <- function(palette = "tricolor", reverse = FALSE, ...) {
  foil_palettes <- list(
    `blu` = foil_colors_("slate blue", "ultramarine"),
    `flower` = foil_colors_("lavender (floral)", "wisteria"),
    `fried` = foil_colors_("dark red", "golden brown"),
    `ocean` = foil_colors_("coral", "ultramarine"),
    `pink` = foil_colors_("lavender (floral)", "plum"),
    `tricolor` = foil_colors_("dark red", "olive", "ultramarine"),
    `olive` = foil_colors_("cal poly green", "dark red", "olive")
  )
  palette_ <- foil_palettes[[palette]]
  if(reverse)
    palette_ <- rev(palette_)
  colorRampPalette(palette_, ...)
}

# theme_foil 

theme_foil <- function(base_size = 12, base_family = "Space Mono") {
  theme_gray(base_size = base_size, base_family = base_family) %+replace%
    theme(
      axis.text = element_text(color = "#E8E9E9", size = rel(0.6)),
      axis.ticks = element_line(color = "#E8E9E9"),
      legend.background = element_rect(fill = "transparent", color = NA),
      legend.key = element_rect(fill = "transparent", color = NA),
      panel.background = element_rect(fill= "#1D1E20", color = "#E8E9E9"),
      panel.border = element_rect(color = "#E8E9E9", fill = NA, size = 1),
      panel.grid.major = element_line(color = "#E8E9E9", size = 0.3),
      panel.grid.minor = element_line(color = "#838485", size = 0.6),
      strip.background = element_rect(fill = "transparent", color = "#E8E9E9",
                                      size = 0.3)
    )
}