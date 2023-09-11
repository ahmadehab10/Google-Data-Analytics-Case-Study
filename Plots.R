install.packages("ggplot2")
library(ggplot2)
ggplot(data = avgbyday)+
  geom_col(mapping = aes(x=Weekday,y=Avg_Steps,fill=Weekday))+
  labs(title = "Average Steps Per Weekday",y="Average Steps",
       caption = "Data Collected In 2016")

ggplot(data = avgbyday)+
  geom_col(mapping = aes(x=Weekday,y=Avg_calories,fill=Weekday))+
  labs(title = "Averagee Calories Burnt Per Weekday",y="Average Calories",
       caption = "Data Collected In 2016")

ggplot(data=fitbit_data)+
  geom_smooth(mapping = aes(x=TotalSteps,y=Calories))+
  labs(title= "Correlation Between Steps and Calories",
       caption = "Data Collected In 2016")

avgactive_minutes<-mean(fitbit_data$VeryActiveMinutes)

avgfairlyactive_minutes<-mean(fitbit_data$FairlyActiveMinutes)

avglightlyactive_minutes<-mean(fitbit_data$LightlyActiveMinutes)
 
avgsedentary_minutes<-mean(fitbit_data$SedentaryMinutes)

avgcalories<- mean(fitbit_data$Calories)

 
fitbit_data %>% 
  ggplot(aes(x=VeryActiveMinutes,y= Calories))+
  geom_point()+
  geom_smooth()+
  labs(title ="Correlation Between Very Active Minutes and Calories Burnt" ,
       caption = "Data Collected In 2016")

fitbit_data %>% 
  ggplot(aes(x=FairlyActiveMinutes,y= Calories))+
  geom_point()+
  geom_smooth()+
  labs(title ="Correlation Between Fairly Active Minutes and Calories Burnt" ,
       caption = "Data Collected In 2016")

  

fitbit_data %>% 
  ggplot(aes(x=LightlyActiveMinutes,y= Calories))+
  geom_point()+
  geom_smooth()+
  labs(title ="Correlation Between Lightly Active Minutes and Calories Burnt" ,
       caption = "Data Collected In 2016")


  fitbit_data %>% 
  ggplot(aes(x=SedentaryMinutes,y= Calories))+
  geom_point()+
  geom_smooth()+
    labs(title ="Correlation Sedentary Minutes and Calories Burnt" ,
         caption = "Data Collected In 2016")
  
  
Max_year<-max(fitbit_data$ActivityDate)
Min_year<-min(fitbit_data$ActivityDate)
#ordering days  
avgbyday$Weekday <- ordered(avgbyday$Weekday, levels=c("Sunday","Monday","Tuesday", "Wednesday", "Thursday", 
                                         "Friday", "Saturday"))