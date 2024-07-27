#' Set World Bank theme
#'
#' @description
#' Core wbplot theme that is modified by other themes.
#'
#' @param font_family_base Character. Base font family name.
#' Defaults to choice stored in `choose_fonts()$base`
#' @param font_family_title Character. Font family for the title.
#' Defaults to choice stored in `choose_fonts()$title`
#' @param font_size Numeric. Base font size. Defaults to 12.
#' @param ... Passes theme parameters to `ggplot2::theme()`
#'
#' @importFrom ggplot2 theme_minimal `%+replace%` theme element_text rel
#' element_line
#' @importFrom ggtext element_textbox_simple
#'
#' @export
wb_theme <- function(
  font_family_base = choose_fonts()$base,
  font_family_title = choose_fonts()$title,
  font_size = 12,
  ...
) {

  ggplot2::theme_minimal(
    base_family = font_family_base,
    base_size = font_size
  ) +
    ggplot2::theme(
      # text overall
      text = ggplot2::element_text(
        family = font_family_base,
        face = "plain",
        size = ggplot2::rel(0.7)
      ),
      # title
      plot.title = ggtext::element_textbox_simple(
        family = font_family_title,
        face = "bold",
        size = ggplot2::rel(1.2), # 14.4
        colour = "black",
        hjust = 0,
        margin = ggplot2::margin(b = ggplot2::rel(1), unit = "pt")
      ),
      plot.title.position = "plot",
      # subtitle
      plot.subtitle = ggtext::element_textbox_simple(
        family = font_family_base,
        face = "plain",
        size = ggplot2::rel(0.9),
        color = "black",
        hjust = 0,
        margin = ggplot2::margin(b = font_size, unit = "pt")
      ),
      # axis text
      axis.text = ggtext::element_markdown(
        size = ggplot2::rel(0.9), # roughly 10.8
        color = "#6d6e71"
      ),
      # axis titles
      axis.title = ggplot2::element_text(
        size = ggplot2::rel(1), # 12
        face = "plain",
        color = "black"
      ),
      # axis ticks
      axis.ticks = ggplot2::element_blank(),
      # TODO: decide whether it's worth trying to make axis titles Markdown
      # by default
      # advantage: makes it easier to add Markdown
      # disadvantages:
      # - can only overwrite with a ggtext function; regular ggplot2 errors
      #   because not of same class
      # - should probably intercept calls that touch the title and recast them
      #   into simlar calls with ggplot2
      # tentative decision: keep it simple; use ggplot2
      # axis.title.y = ggtext::element_textbox(orientation = "left-rotated"),
      # axis.title.x = ggtext::element_textbox(orientation = "upright"),
      axis.line = ggplot2::element_line(color = "black"),
      # legend
      legend.position = "top",
      legend.justification = 0,
      legend.title = ggplot2::element_blank(),
      legend.text = ggplot2::element_text(
        size = ggplot2::rel(0.9),
        color = "black",
        face = "plain"
      ),
      # caption
      plot.caption = ggtext::element_textbox_simple(
        size = ggplot2::rel(0.7),
        color = "#6d6e71",
        hjust = 0
      ),
      plot.caption.position = "plot",
      # tag
      plot.tag = ggplot2::element_text(
        family = font_family_base,
        size = 12,
        face = "plain",
        hjust = 0,
        vjust = 0,
        margin = ggplot2::margin(t = 0, r = 0, b = 1, l = 0)
      ),
      plot.tag.position = "topleft",
      # background
      plot.background = ggplot2::element_blank(),
      panel.background = ggplot2::element_blank(),
      panel.border = ggplot2::element_blank(),
      # gridlines
      panel.grid.major = ggplot2::element_line(color = "#dcdcdc"),
      panel.grid.minor = ggplot2::element_blank(),
      # ensure that this is a complete theme
      complete = TRUE,
      # pass on all other theme settings
    ) +
    ggplot2::theme(...)

}

#' Provide a bar plot theme
#'
#' @description
#' Removes y axis grid lines
#'
#' @inheritParams wb_theme
#' @param x_grid Boolean. Whether to include x axis grid lines and
#' any x axis text.
#' @param x_axis Boolean. Whether to show x axis scale, title, and labels.
#' If so, include x axis title and label text.
#' If not, remove x axis title and label text.
#' @param use_axis_title Boolean. Whether to have axis title.
#' If so, color title black and label text grey.
#' If not, color label text grey.
#' @param ... Passes theme parameters to `ggplot2::theme()`
#'
#' @importFrom ggplot2 `%+replace%` theme element_blank
#' scale_x_continuous expansion
#'
#' @export
wb_theme_bar <- function(
  font_family_base = choose_fonts()$base,
  font_family_title = choose_fonts()$title,
  font_size = 12,
  x_grid = TRUE,
  x_axis = FALSE,
  use_axis_title = TRUE,
  ...
) {

  theme_bar <- wb_theme(
    font_family_base = font_family_base,
    font_family_title = font_family_title,
    font_size = font_size
  ) +
    ggplot2::theme(
      panel.grid.major.y = ggplot2::element_blank(),
      panel.grid.minor.y = ggplot2::element_blank(),
      # remove x axis line
      axis.line.x = ggplot2::element_blank(),
      # all other theme parameters
      ...
    )

  if (x_grid == FALSE) {
    theme_bar <- theme_bar +
      ggplot2::theme(
        # axis text
        axis.text.x = ggplot2::element_blank(),
        # grid lines
        panel.grid.major.x = ggplot2::element_blank(),
        panel.grid.minor.x = ggplot2::element_blank(),
        # all other theme parameters
        ...
      )
  }

  if (x_axis == TRUE) {
    theme_bar <- theme_bar +
      ggplot2::theme(
        axis.text.x = ggtext::element_markdown(
          size = ggplot2::rel(0.9), # roughly 10.8
          color = "#6d6e71"
        ),
        axis.title.x = ggplot2::element_text(
          size = ggplot2::rel(1), # 12
          face = "plain",
          color = "black"
        ),
        # pass along all other theme parmeters
        ...
      )

  }

  # see combining multiple components here: 
  # https://ggplot2-book.org/programming#multiple-components
  bar_styles <- list(
    ggplot2::scale_x_continuous(expand = ggplot2::expansion(mult = c(0, 0.1))),
    theme_bar
  )

  return(bar_styles)

}

#' Provide a column plot theme
#'
#' @description
#' Removes x axis grid lines
#'
#' @inheritParams wb_theme
#' @inheritParams wb_theme_bar
#' @param y_grid Boolean. Whether to include y axis grid lines and
#' any y axis text.
#' @param y_axis Boolean. Whether to show y axis scale, title, and labels.
#' If so, include y axis title and label text.
#' If not, remove y axis title and label text.
#' @param use_axis_title Boolean. Whether to have axis title.
#' If so, color title black and label text grey.
#' If not, color label text grey.
#'
#' @importFrom ggplot2 `%+replace%` theme element_blank
#' scale_y_continuous expansion
#'
#' @export
wb_theme_column <- function(
  font_family_base = choose_fonts()$base,
  font_family_title = choose_fonts()$title,
  font_size = 12,
  y_grid = TRUE,
  y_axis = FALSE,
  use_axis_title = TRUE,
  ...
) {

  theme_column <- wb_theme(
    font_family_base = font_family_base,
    font_family_title = font_family_title,
    font_size = font_size
  ) +
    ggplot2::theme(
      # remove all x axis
      panel.grid.major.x = ggplot2::element_blank(),
      panel.grid.minor.x = ggplot2::element_blank(),
      # remove minor Y gridlines
      panel.grid.minor.y = ggplot2::element_blank(),
      # remove y axis
      axis.line.y = ggplot2::element_blank(),
      axis.text.y = ggplot2::element_blank(),
      axis.title.y = ggplot2::element_blank(),
      # pass along all other theme parmeters
      ...
    )

  if (y_grid == FALSE) {
    theme_column <- theme_column +
      ggplot2::theme(
        # axis text
        axis.text.y = ggplot2::element_blank(),
        # grid lines
        panel.grid.major.y = ggplot2::element_blank(),
        panel.grid.minor.y = ggplot2::element_blank(),
        # pass along all other theme parmeters
        ...
      )
  }

  if (y_axis == TRUE) {
    theme_column <- theme_column +
      ggplot2::theme(
        axis.text.y = ggtext::element_markdown(
          size = ggplot2::rel(0.9), # roughly 10.8
          color = "#6d6e71"
        ),
        axis.title.y = ggplot2::element_text(
          size = ggplot2::rel(1), # 12
          face = "plain",
          color = "black"
        ),
        # pass along all other theme parmeters
        ...
      )

  }

  if (use_axis_title == FALSE) {
    theme_column <- theme_column +
      ggplot2::theme(
        axis.title = ggplot2::element_blank(),
        axis.title = ggplot2::element_text(
          size = ggplot2::rel(1), # 12
          face = "plain",
          color = "black"
        )

      )
  }

  # see combining multiple components here: 
  # https://ggplot2-book.org/programming#multiple-components
  column_styles <- list(
    ggplot2::scale_y_continuous(expand = ggplot2::expansion(mult = c(0, 0))),
    theme_column
  )

  return(column_styles)

}

#' Provide a line plot theme
#'
#' @description
#' Removes X axis grid lines
#' 
#' @inheritParams wb_theme
#' @inheritParams wb_theme_column
#' 
#' @export
wb_theme_line <- function(
  font_family_base = choose_fonts()$base,
  font_family_title = choose_fonts()$title,
  font_size = 12,
  y_axis = FALSE,
  use_axis_title = TRUE,
  ...
) {

  theme_line <- wb_theme(
    font_family_base = font_family_base,
    font_family_title = font_family_title,
    font_size = font_size
  ) +
    ggplot2::theme(
      # remove X gridlines
      panel.grid.major.x = ggplot2::element_blank(),
      # remove Y axis elements
      axis.line.y = ggplot2::element_blank(),
      axis.text.y = ggplot2::element_blank(),
      axis.title.y = ggplot2::element_blank(),
      # pass along all other theme parmeters
      ...
    )

  if (y_axis == TRUE) {
    theme_line <- theme_line +
      ggplot2::theme(
        axis.text.y = ggtext::element_markdown(
          size = ggplot2::rel(0.9), # roughly 10.8
          color = "#6d6e71"
        ),
        axis.title.y = ggplot2::element_text(
          size = ggplot2::rel(1), # 12
          face = "plain",
          color = "black"
        ),
        # pass along all other theme parmeters
        ...
      )

  }

  if (use_axis_title == FALSE) {
    theme_line <- theme_line +
      ggplot2::theme(
        axis.title = ggplot2::element_blank(),
        axis.title = ggplot2::element_text(
          size = ggplot2::rel(1), # 12
          face = "plain",
          color = "black"
        )

      )
  }

  return(theme_line)

}
