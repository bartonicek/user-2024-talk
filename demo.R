
devtools::install_github("bartonicek/plotscape/packages/plotscaper")

library(plotscaper)
library(palmerpenguins)

penguins <- na.omit(penguins)
names(penguins) <- c(
  "Species", "Island", "Bill Length", "Bill Depth",
  "Flipper Length", "Body Mass", "Sex", "Year"
)

set_scene(penguins) |>
  add_scatterplot(c("Body Mass", "Flipper Length"))

set_scene(penguins) |>
  add_scatterplot(c("Body Mass", "Flipper Length")) |>
  add_barplot(c("Species")) |>
  add_barplot(c("Sex")) |>
  add_scatterplot(c("Bill Length", "Bill Depth"))

set_scene(penguins) |>
  add_scatterplot(c("Body Mass", "Flipper Length")) |>
  add_fluctplot(c("Species", "Sex")) |>
  add_scatterplot(c("Bill Length", "Bill Depth")) |>
  add_parcoords(c("Bill Length", "Bill Depth",
                  "Flipper Length", "Body Mass"))
