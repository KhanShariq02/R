calculate_annual_growth <- function(year_1 , year_2 , pop_y1 ,pop_y2,city) {
    annual_growth <- (((pop_y2 - pop_y1) / pop_y1) * 100) / (year_2 - year_1)

    message <- paste("From" ,year_1,"to",year_2, "the population of",city,
    "grew by approx",annual_growth,"% each year")

    print(message)
    return(annual_growth)
}

calculate_annual_growth(2018,2020,10000000,15500000,"India")
