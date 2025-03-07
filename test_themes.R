#load packages
library(tidyverse)
library(ggthemes)
#if you want to download just the theme file and not the repository
download.file(url="https://raw.githubusercontent.com/karenbobier/ggplot_publication_themes/refs/heads/main/ggplot_themes_for_publications.R", destfile="ggplot_themes_for_publications.R")
source('ggplot_themes_for_publications.R')
source('C:/Users/karen/OneDrive/Documents/jeff_data/R_files/ggplot_themes_for_publications.R')

#create a scatter plot with theme_Publication
Scatter <- ggplot(mtcars, aes(mpg,disp,color=factor(hp))) + geom_point(size=3, stroke=1.2) + labs(title="Scatter Plot")
Scatter + theme_Publication()
#can use 21 shapes with this scale_shape_custom
Scatter_shapes <- ggplot(mtcars, aes(mpg,disp,color=factor(hp), shape=factor(hp))) + geom_point(size=3, stroke=1.2) + labs(title="Scatter Plot")
Scatter_shapes + theme_Publication() + scale_shape_custom()

#test colorblind friendly pallet (11 colors)
#subset the data so there are only 11 hp values
mtcars_subset <- subset(mtcars, hp<120)
Scatter_subset <- ggplot(mtcars_subset, aes(mpg,disp,color=factor(hp))) + geom_point(size=3, stroke=1.2) + labs(title="Scatter Plot")
Scatter_subset + theme_Publication() + scale_colour_colorblind()

#plot with unique shapes for each hp
Scatter_subset_shapes <- ggplot(mtcars_subset, aes(mpg,disp,color=factor(hp), shape=factor(hp))) + geom_point(size=3, stroke=1.2) + labs(title="Scatter Plot")
Scatter_subset_shapes + theme_Publication() + scale_colour_colorblind() + scale_shape_custom()


#barplot
Bar <- ggplot(mtcars, aes(factor(carb),fill=factor(carb))) + 
  geom_bar(alpha=0.7) + 
  labs(title="Bar Plot") +theme_Publication()
Bar 
Bar + scale_fill_colorblind()
