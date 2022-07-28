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

ggplot(data = invasion_1) +
  geom_line(
    mapping = aes(x = V2, y = V16, color = V12, group = V1),
    show.legend = TRUE
  )+
  ggtitle("Number of cluster insertions per individual over generations with 3% piRNA clusters") +
  ylab("Number of cluster insertions per individual") + xlab("Generations")

ggplot(data = invasion_1) +
  geom_line(
    mapping = aes(x = V2, y = V8, color = V12, group = V1),
    show.legend = TRUE
  )+
  ggtitle("Average TE insertions per diploid over generations with 3% piRNA clusters") +
  ylab("Average TE insertions per diploid") + xlab("Generations")

ggplot(data = invasion_1) +
  geom_line(
    mapping = aes(x = V2, y = V20, color = V12, group = V1),
    show.legend = TRUE
  )+
  ggtitle("fraction of individuals with a paramutable locus and piRNAs over generations with 3% piRNA clusters") +
  ylab("fraction of individuals with a paramutable locus and piRNAs") + xlab("Generations")


invasion_3 <- read.table(
  "invasion_3_para_raw.txt",
  sep="\t",
  fill = TRUE)

invasion_4 <- read.table(
  "invasion_4_para_trigger_raw.txt",
  sep="\t",
  fill = TRUE)

ggplot(data = invasion_1) +
  geom_line(
    mapping = aes(x = V2, y = V8, color = V12, group = V1),
    show.legend = FALSE
  ) +
  ylim(0,400) +
  ggtitle("piRNA clusters 3%") +
  ylab("Average TE insertions per diploid") + xlab("Generations")

ggplot(data = invasion_3) +
  geom_line(
    mapping = aes(x = V2, y = V8, color = V12, group = V1),
    show.legend = FALSE
  ) +
  ylim(0,400) +
  ggtitle("piRNA clusters 3%, paramutable loci") +
  ylab("Average TE insertions per diploid") + xlab("Generations")

ggplot(data = invasion_4) +
  geom_line(
    mapping = aes(x = V2, y = V8, color = V12, group = V1),
    show.legend = FALSE
  ) +
  ylim(0,400) +
  ggtitle("piRNA clusters 3%, paramutable loci, triggering loci") +
  ylab("Average TE insertions per diploid") + xlab("Generations")

