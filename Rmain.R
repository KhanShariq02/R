calculate_annual_growth <- function(year_1 , year_2 , pop_y1 ,pop_y2,city) {
    annual_growth <- (((pop_y2 - pop_y1) / pop_y1) * 100) / (year_2 - year_1)

    information <- paste("From" ,year_1,"to",year_2, "the population of",city,
    "grew by approx",annual_growth,"% each year")

    print(information)
    return(annual_growth)
}

calculate_annual_growth(2018,2020,10000000,15500000,"Brazil")

#Reading and writing CSV files in R
df <- data.frame(
    sample_id = 1:5,
    group = c("control","treatment","control","treatment","control"),
    expr1 = c(10.5,12.3,9.8,11.7,10.1)
)
df

write.csv(df , "my_data.csv", row.names = FALSE)

new_df <- read.csv("my_data.csv")
new_df
str(new_df)
summary(new_df)
getwd()
list.files()

new_df
new_df2 <- read.csv("my_data.csv" , stringsAsFactors = TRUE)
new_df2