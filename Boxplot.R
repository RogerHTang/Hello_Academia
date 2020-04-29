
library(ggplot2)
library(extrafont)
font_import()
y
loadfonts(device="win") # for windows

ggplot(<dataset>, aes(x = <species_collumn>, y = <metal>))+
   geom_boxplot(coef=1.0, outlier.shape = 1, outlier.size = 2, fill="white", color = "dark red")+
   ylim(0, <max> )+ # change the second number to the rounded up number of your maximum value 
   geom_hline(yintercept = <hyperaccumulation_threshold>, color = "black",linetype="dashed")+ #This line is optional if you want to include a threshold
   theme_bw() +
   xlab("") +
   ylab(bquote("<inset_metal> (" * mu * "g" ~ g^-1 * ")"))+
   scale_x_discrete(labels= <x.axis_labels>)+ # delete line if you aren't renaming labels
   coord_flip()+ # delete line to flip chart
   theme(text=element_text(family="Times New Roman"),
         axis.text=element_text(color = "black", size=12), # for font 
         axis.text.y=element_text(face="italic") # delete line if species are not used
         )
