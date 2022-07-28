Untitled
================

## GitHub Documents

This is an R Markdown format used for publishing markdown documents to
GitHub. When you click the **Knit** button all R code chunks are run and
a markdown file (.md) suitable for publishing to GitHub is generated.

## Including Code

You can include R code in the document as follows:

    library(tidyverse)
    library(tidyr)
    library(readxl)
    library(ggmuller)

    setwd('/Users/ascarpa/Downloads/invadego_simulations')

    invasion_1 <- read.table(
      "invasion_1_raw.txt",
      sep="\t",
      fill = TRUE)

    ggplot(data = invasion_1) +
      geom_line(
        mapping = aes(x = V2, y = V10, color = V12, group = V1),
        show.legend = TRUE
      )+
      ggtitle("Number of fixed TE insertions over generations with 3% piRNA clusters") +
      ylab("Number of fixed TE insertions") + xlab("Generations")

## Including Plots

You can also embed plots, for example:

    ## ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.1 ──

    ## ✔ ggplot2 3.3.6     ✔ purrr   0.3.4
    ## ✔ tibble  3.1.7     ✔ dplyr   1.0.9
    ## ✔ tidyr   1.2.0     ✔ stringr 1.4.0
    ## ✔ readr   2.1.2     ✔ forcats 0.5.1

    ## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()

    ## Warning: Removed 1 row(s) containing missing values (geom_path).

![](Markdown_test_files/figure-gfm/pressure-1.png)<!-- -->

Note that the `echo = FALSE` parameter was added to the code chunk to
prevent printing of the R code that generated the plot.
