library(tidyverse)
library(dslabs)
library(ggthemes)
library(ggrepel)
data.frame(murders)
murders <- murders
murders
head(murders)
rate<-murders %>%
  summarise(murder_rate_per_million=sum(total)/sum(population)*10^6)

murders %>%    
  ggplot(aes(population/10^6,total,label =abb))+
    geom_point(aes(col=region),size=3)+
    geom_text_repel() + 
    xlab("Population in log")+
    ggtitle("Murder rate")+
    scale_x_log10()+
    scale_y_log10() 
    scale_color_discrete(name="Region")+
      theme_economist()