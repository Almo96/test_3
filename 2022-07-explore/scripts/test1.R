library(tidyverse)
library(RColorBrewer)
p6<-c("grey","#1a9850","#ffd700","#d73027") # gold

d<-read_delim("/Users/rokofler/analysis/2022-paramutation/2022-07-explore/raw/data-for.r",delim="\t",col_names=FALSE,comment="#")
names(d)<-c("rep","gen",	"popstat",	"fmale",	"crap1","fwte","avw","avtes","avpopfreq","fixed","crap2","phase","fwpirna","crap3","fwcli","avcli","fixcli","crap4","fwpar_yespi","fwpar_nopi",
            "avpar","fixpar","crap5","piori","orifreq","frac_para","craplast")
d$phase <- factor(d$phase, levels=c("rapi", "trig", "shot", "inac"))
d$frac_para <- factor(d$frac_para, levels=c("p00", "p10", "p20", "p50","p100"))


g<-ggplot()+theme(legend.position="none")+
  geom_line(data=d,aes(x=gen,y=avtes,group=rep,color=phase),alpha=1,size=0.7)+
  ylab("insertions per diploid individual")+xlab("generations")+facet_wrap(.~frac_para)+
  scale_colour_manual(values=p6)
plot(g)