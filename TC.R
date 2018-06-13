library('rio')
library('plotly')
tg_comparison<-import("2016_TG_comparison.csv")
#		w/ labels
tg<- plot_ly(tg_comparison, x = ~RotorArea_m2, y = ~Capacity_kW, z = ~GroupCF,size = ~TurbineCount, sizes=c(1,500), color = ~WRA, colors = c('#f44242','#f48041','#f4f441','#67f441','#41f1f4','#416df4','#8541f4','#f441be'),
             text=~paste('Project:',Project,'<br>Turbine Model:',Manufacturer,Model,'<br>Turbine Capacity:',Capacity_kW,'kW<br>Turbine Count:',TurbineCount,'<br>Rotor Area:',RotorArea_m2,'m^2<br>Group Capacity:',GroupCapacity_kW,'kW<br>Group Capacity Factor:',GroupCF)) %>%
  add_markers() %>%
  layout(scene = list(xaxis = list(title = 'Rotor Area (m^2)'),
                      yaxis = list(title = 'Turbine Capacity (kW)'),
                      zaxis = list(title = 'Group CF')))