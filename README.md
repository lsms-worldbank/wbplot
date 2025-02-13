
<!-- README.md is generated from README.Rmd. Please edit that file -->

# wbplot

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

While `{ggplot2}` provides a powerful tools for producing engaging
visualizations, it also confronts would-be users with an overwhelming
array of technical and stylistic choices: how tailor the look of common
plot types, which colors to use, etc.

The goals of `{wbplot}` are to:

- **Promote “on-brand” plots.** Offering tools to easily align data viz
  with the [World Bank Group’s Branding and Visual Identity
  Guidelines](https://thedocs.worldbank.org/en/doc/723361567518322252-0060022019/WBG-Branding-and-Visual-Identity-Guidelines-February-2016).
- **Collect corporate colors and curated color palettes.** Providing
  easy access to primary and secondary corporate colors (e.g., World
  Bank Group’s blues) as well as curated color palettes for different
  data needs (e.g., qualitative, converging, diverging, etc).
- **Streamline plot production through brand-aware and plot-specific
  `{ggplot2}` themes.** Supply a set of simple theme functions that
  effortlessly meet common viz needs (e.g., column plot, bar plot, line
  plot, etc.).

## Installation

Since `{wbplot}` is not yet available on CRAN, it can be installed from
GitHub as follows:

``` r
if (!require("pak")) install.packages("pak")
pak::pak("lsms-worldbank/wbplot")
```

## Usage

### Themes

Step 1: compose a `{ggplot2}` plot.

Step 2: add the appropriate wbplot theme (e.g. `+ wb_theme_bar()`):

- `wb_theme()`. General theme.
- `wb_theme_bar()`. Implements sensible defaults for a (horizontal) bar
  plots. Offers options: whether to include x-axis grid lines; whether
  to show x-axis scale, title, and labels; whether to have axis titles
  on the x and y axes.
- `wb_theme_column()`. Implements sensible defaults for column plots.
  Offers options: whether to include y-axis grid lines; whether to show
  y-axis scale, title, and labels; whether to have axis title son the x
  and y axis.
- `wb_theme_line()`. Implements sensible defaults for line plots. Offers
  options: whether to include y-axis scale, title, and labels; whether
  to use axis titles on x and y axes.

### Color

COMING SOON
