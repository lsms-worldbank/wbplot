#' Check whether World Bank Group fonts exist on device
#'
#' @return Boolean. `TRUE` if both available. `FALSE` otherwise
#'
#' @noRd 
check_wbg_fonts <- function() {

  # inventory all font files
  font_files <- sysfonts::font_files()

  # see if wbg font files exist
  andes_exists <- any(grepl(x = font_files$file, pattern = "^Andes"))
  arial_exists <- any("Arial" %in% font_files$family)

  wbg_fonts_exist <- all(
    andes_exists == TRUE,
    arial_exists == TRUE
  )

  return(wbg_fonts_exist)

}

#' Choose which fonts to use: World Bank fonts or Google Fonts alternatives
#'
#' @return List. `title` contains the title font, `base` the base font.
#'
#' @noRd 
choose_fonts <- function() {

  # check whether World Bank Group official fonts exist
  wbg_fonts_exist <- check_wbg_fonts()

  # determine the fonts to use as a function
  # if WBG fonts exist, return them
  if (wbg_fonts_exist) {

    fonts <- list(
      title = "andes",
      base = "arial"
    )

  # otherwise, return Google fonts that are nearest matches
  } else {

    fonts <- list(
      title = "montserrat",
      base = "lato"
    )

  }

  return(fonts)

}

#' Load fonts for text in plots
#'
#' @description
#' If World Bank Group's corporate fonts are avaialble on the device,
#' load them from disk.
#' Otherwise, load Google fonts that are near matches.
#'
#' @param wbg_fonts_exist Logical. Whether or not both corporate fonts found.
#'
#' @return List of fonts with two named elements:
#' - `title`. Font to use for plot title
#' - `base`. Font to use for everything else.
#'
#' @noRd 
load_fonts <- function(wbg_fonts_exist) {

  if (wbg_fonts_exist) {

    # construct an OS-specific path to fonts on the device
    fonts_dir <- sysfonts::font_paths()

    # andes
    sysfonts::font_add(
      family = "andes",
      regular = fs::path(fonts_dir, "Andes-Regular.otf"),
      bold = fs::path(fonts_dir, "Andes-Bold.otf")
    )

    # arial
    sysfonts::font_add(
      family = "arial",
      regular = fs::path(fonts_dir, "arial.ttf"),
      bold = fs::path(fonts_dir, "arialbd.ttf")
    )

    # compose of list of fonts
    fonts <- list(
      title = "andes",
      base = "arial"
    )

  } else {

    # montserrat
    sysfonts::font_add_google(
      name = "Montserrat",
      family = "montserrat"
    )
    # lato
    sysfonts::font_add_google(
      name = "Lato",
      family = "lato"
    )

    # compose of list of fonts
    fonts <- list(
      title = "montserrat",
      base = "lato"
    )

  }

  return(fonts)

}
