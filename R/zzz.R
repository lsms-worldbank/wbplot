.onLoad <- function(libname, pkgname) {

  # check whether World Bank Group corporate fonts exist on device
  wbg_fonts_exist <- check_wbg_fonts()

  # load relevant fonts
  # if corporate fonts exist, load them
  # otherwise, download and load Google Fonts that are close matches
  load_fonts(wbg_fonts_exist = wbg_fonts_exist)

  # use showtext to render text
  showtext::showtext_auto(enable = TRUE)
  showtext::showtext_opts(dpi = 300)

}

.onAttach <- function(libname, pkgname) {

  # check whether World Bank Group corporate fonts exist on device
  wbg_fonts_exist <- check_wbg_fonts()
  # inform the user of font substitions being made on their behalf
  if (wbg_fonts_exist == TRUE) {
    packageStartupMessage(
      paste(
        "World Bank Group's recommended corporate fonts, Andes and Arial,",
        "successfully found and loaded"
      )
    )
  } else if (wbg_fonts_exist == FALSE) {
    packageStartupMessage(
      paste(
        "World Bank Group's recommended corporate fonts are missing.",
        "Using Montserrat and Lato instead."
      )
    )
  }

}
