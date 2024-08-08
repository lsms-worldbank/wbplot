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


# ==============================================================================
# Diverging palettes ?
# ==============================================================================

# brown-green
# 

# red-blue
# red from SDG poverty icon: "#e5243b"
# blue from SDG Atlas poverty graphs: "#2d9dcc"
# https://projects.susielu.com/viz-palette?colors=[%22#00375e%22,%22#006792%22,%22#2299c6%22,%22#69ccf8%22,%22#f5f5f5%22,%22#fbb0af%22,%22#f6646b%22,%22#cc1b2c%22,%22#830000%22]&backgroundColor=%22white%22&fontColor=%22black%22&mode=%22normal%22
pal_blue_red <- c(
'#00375e', '#006792', '#2299c6', '#69ccf8', '#f5f5f5', '#fbb0af', '#f6646b', '#cc1b2c', '#830000'
)

# green-grey
# greenery to urban density
# https://projects.susielu.com/viz-palette?colors=[%22#003c00%22,%22#106d0a%22,%22#35a228%22,%22#72d65d%22,%22#f5f5f5%22,%22#bfbfbf%22,%22#8b8b8b%22,%22#5b5b5b%22,%22#2e2e2e%22]&backgroundColor=%22white%22&fontColor=%22black%22&mode=%22normal%22
# https://gka.github.io/palettes/#/9|d|008000|808080|1|1
# small problems occur for two colors at polar ends of palette for some
# visual deficiencies
pal_green_grey <- c(
'#003c00', '#106d0a', '#35a228', '#72d65d', '#f5f5f5', '#bfbfbf', '#8b8b8b', '#5b5b5b', '#2e2e2e'
)

# green-brown
# https://projects.susielu.com/viz-palette?colors=[%22#003a26%22,%22#0f6a52%22,%22#339d83%22,%22#6ed1b5%22,%22#f5f5f5%22,%22#f5af8c%22,%22#bc7c5b%22,%22#864c2d%22,%22#521f00%22]&backgroundColor=%22white%22&fontColor=%22black%22&mode=%22normal%22
# small problems start in protanopia and grow pronounced in greyscale
# https://gka.github.io/palettes/#/9|d|007c63|673115|1|1
pal_green_brown <- c(
'#003a26', '#0f6a52', '#339d83', '#6ed1b5', '#f5f5f5', '#f5af8c', '#bc7c5b', '#864c2d', '#521f00'
# consider also:
# https://projects.susielu.com/viz-palette?colors=[%22#0f3608%22,%22#3d6433%22,%22#6e9561%22,%22#a0ca93%22,%22#f5f5f5%22,%22#bf9d86%22,%22#866556%22,%22#4f332c%22,%22#210000%22]&backgroundColor=%22white%22&fontColor=%22black%22&mode=%22normal%22
# minor problems with some common visual deficiencies
# significant problems with deuteranopia and greyscale
)
