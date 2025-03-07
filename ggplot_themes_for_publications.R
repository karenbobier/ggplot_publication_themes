
#modified from https://raw.githubusercontent.com/koundy/ggplot_theme_Publication/refs/heads/master/ggplot_theme_Publication-2.R", destfile='ggplot_theme_Publication-2.R

theme_Publication <- function(base_size=14, base_family="sans") {
  library(grid)
  library(ggthemes)
  (theme_foundation(base_size=base_size, base_family=base_family)
    + theme(plot.title = element_text(face = "bold",
                                      size = rel(1.2), hjust = 0.5, margin = margin(0,0,20,0)),
            text = element_text(),
            panel.background = element_rect(colour = NA),
            plot.background = element_rect(colour = NA),
            panel.border = element_rect(colour = NA),
            axis.title = element_text(face = "bold",size = rel(1)),
            axis.title.y = element_text(angle=90,vjust =2),
            axis.title.x = element_text(vjust = -0.2),
            axis.text = element_text(), 
            axis.line.x = element_line(colour="black"),
            axis.line.y = element_line(colour="black"),
            axis.ticks = element_line(),
            panel.grid.major = element_blank(),
            panel.grid.minor = element_blank(),
            # panel.grid.major = element_line(colour="#f0f0f0"),
            # panel.grid.minor = element_blank(),
            legend.key = element_rect(colour = NA),
            legend.position = "right",
            legend.direction = "vertical",
            legend.box = "vetical",
            legend.key.size= unit(0.5, "cm"),
            #legend.margin = unit(0, "cm"),
            legend.title = element_text(face="italic"),
            plot.margin=unit(c(10,5,5,5),"mm"),
            strip.background=element_rect(colour="#f0f0f0",fill="#f0f0f0"),
            strip.text = element_text(face="bold")
    ))
  
}

#create 12 color colorblind friendly pallet
scale_fill_colorblind <- function(...){
  library(scales)
  discrete_scale("fill","Publication", 
        manual_pal(values = c("#a50026","#d73027","#f46d43","#fdae61","#fee090","#ffffbf","#e0f3f8","#abd9e9","#74add1","#4575b4","#313695","#000000")), ...)
  
}

scale_colour_colorblind <- function(...){
  library(scales)
  discrete_scale("colour","Publication",
        manual_pal(values = c("#a50026","#d73027","#f46d43","#fdae61","#fee090","#ffffbf","#e0f3f8","#abd9e9","#74add1","#4575b4","#313695","#000000")), ...)
  
}
#21 shapes
scale_shape_custom <- function(...){
  library(scales)
  discrete_scale("shape", "Publication",
                 manual_pal(values=c(0:18,24,25)), ...)
}
scale_shape_custom <- function(...){
  library(scales)
  discrete_scale("shape", "Publication",
                 manual_pal(values= c(0:18,24,25)), ...)
}

#colorblind friendly colors, from color brewer
#a50026
#d73027
#f46d43
#fdae61
#fee090
#ffffbf
#e0f3f8
#abd9e9
#74add1
#4575b4
#313695
#000000
