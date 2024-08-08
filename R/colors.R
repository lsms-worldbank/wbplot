# ==============================================================================
# Main corporate colors
# ==============================================================================

#' @title World Bank dark blue
#' @family World Bank main corporate colors
#' @export
wb_dark_blue <- "#002244"

#' @title World Bank light blue
#' @family World Bank main corporate colors
#' @export
wb_light_blue <- "#009FDA"

#' @title World Bank black
#' @family World Bank main corporate colors
#' @export
wb_black <- "#231f20"

#' @title World Bank white
#' @family World Bank main corporate colors
#' @export
wb_white <- "#ffffff"


# ==============================================================================
# Secondary corporate colors
# ==============================================================================

# warm
# .. bright
wb_warm_br_orange_1 <- "#f05023"
wb_warm_br_yellow <- "#FDB714"
wb_warm_br_red <- "#eb1c2d"
wb_warm_br_orange_2 <- "#f78d28"
# ... neutral/muted
wb_warm_neut_red <- "#98242b"
wb_warm_neut_orange <- "#e36c2c"
wb_warm_neut_yellow <- "#b98d2d"

# cool
# ... bright
wb_cool_br_blue <- "#009da7"
wb_cool_br_green <- "#00ac51"
wb_cool_br_purple <- "#882b90"
wb_cool_br_teal <- "#00a996"
# ... neutral/muted
wb_cool_neut_purple <- "#614776"
wb_cool_neut_blue <- "#006068"
wb_cool_neut_green <- "#006450"


# ==============================================================================
# Qualitative palettes
# ==============================================================================

# https://projects.susielu.com/viz-palette?colors=[%22#002244%22,%22#009fda%22,%22#2c7767%22,%22#00a996%22,%22#7b7b7b%22,%22#fdb714%22]&backgroundColor=%22white%22&fontColor=%22black%22&mode=%22normal%22

#' @title World Bank dark blue
#' @family World Bank corporate color palette
#' @export
wb_pal_dark_blue <- wb_dark_blue

#' @title World Bank light blue
#' @family World Bank corporate color palette
#' @export
wb_pal_light_blue <- wb_light_blue

#' @title World Bank light green
#' @family World Bank corporate color palette
#' @export
wb_pal_light_green <- "#00A996"

#' @title World Bank dark green
#' @family World Bank corporate color palette
#' @export
wb_pal_dark_green <- "#2C7767"

#' @title World Bank grey
#' @family World Bank corporate color palette
#' @export
wb_pal_grey <- "#7B7B7B"

#' @title World Bank accent color
#' @family World Bank corporate color palette
#' @export
wb_accent_yellow <- "#FDB714"

#' World Bank color palette
#' 
#' @description Color palette dervied from World Bank's corporate colors.
#' @export
wb_palette <- c(
  wb_dark_blue,
  wb_light_blue,
  wb_pal_light_green,
  wb_pal_dark_green,
  wb_pal_grey
)


# ==============================================================================
# Sequential palettes
# ==============================================================================

# https://projects.susielu.com/viz-palette?colors=[%22#002f54%22,%22#3b577c%22,%22#6b83a6%22,%22#9db2d1%22,%22#d0e3ff%22]&backgroundColor=%22white%22&fontColor=%22black%22&mode=%22normal%22
wb_dark_blue_pal <- c(
  "#002f54",
  "#3b577c",
  "#6b83a6",
  "#9db2d1",
  "#d0e3ff",
# #002f54,#3a5982,#6a87b3,#9cb8e7,#d3eeff
# https://projects.susielu.com/viz-palette?colors=[%22#002f54%22,%22#3a5982%22,%22#6a87b3%22,%22#9cb8e7%22,%22#d3eeff%22]&backgroundColor=%22white%22&fontColor=%22black%22&mode=%22normal%22
)

wb_light_blue_pal <- c(
# https://projects.susielu.com/viz-palette?colors=[%22#009fda%22,%22#1276ad%22,%22#124f7f%22,%22#082c54%22,%22#000a2b%22]&backgroundColor=%22white%22&fontColor=%22black%22&mode=%22normal%22
'#001944', '#004274', '#006fa5', '#069fd8', '#62cfff'
)

# https://projects.susielu.com/viz-palette?colors=[%22#2c7767%22,%22#57988b%22,%22#81b9b0%22,%22#acdcd6%22,%22#d9fffc%22]&backgroundColor=%22white%22&fontColor=%22black%22&mode=%22normal%22
wb_dark_green_pal <- c(
  "#2c7767",
  "#57988b",
  "#81b9b0",
  "#acdcd6",
  "#d9fffc",
# https://projects.susielu.com/viz-palette?colors=[%22#002113%22,%22#034c3e%22,%22#2f7a6a%22,%22#60aa98%22,%22#92dcc9%22]&backgroundColor=%22white%22&fontColor=%22black%22&mode=%22normal%22
# '#002113', '#034c3e', '#2f7a6a', '#60aa98', '#92dcc9'
)

wb_light_green_pal <- c(
# https://projects.susielu.com/viz-palette?colors=[%22#002213%22,%22#004c3e%22,%22#007b6a%22,%22#06ac99%22,%22#5addc9%22]&backgroundColor=%22white%22&fontColor=%22black%22&mode=%22normal%22
# https://gka.github.io/palettes/#/5|s|00a996|ffffe0,ff005e,93003a|1|1
'#002213', '#004c3e', '#007b6a', '#06ac99', '#5addc9'
)

wb_grey_pal <- c(
# https://projects.susielu.com/viz-palette?colors=[%22#242424%22,%22#4d4d4d%22,%22#7b7b7b%22,%22#acacac%22,%22#e0e0e0%22]&backgroundColor=%22white%22&fontColor=%22black%22&mode=%22normal%22
# https://gka.github.io/palettes/#/5|s|7b7b7b|ffffe0,ff005e,93003a|1|1
'#242424', '#4d4d4d', '#7b7b7b', '#acacac', '#e0e0e0'
)

wb_yellow_pal <- c(
# https://projects.susielu.com/viz-palette?colors=[%22#3a0000%22,%22#603100%22,%22#905c00%22,%22#c58801%22,%22#fdb714%22]&backgroundColor=%22white%22&fontColor=%22black%22&mode=%22normal%22
# https://gka.github.io/palettes/#/5|s|fdb714|ffffe0,ff005e,93003a|1|1
'#3a0000', '#603100', '#905c00', '#c58801', '#fdb714'
)

# color ramps

# diverging