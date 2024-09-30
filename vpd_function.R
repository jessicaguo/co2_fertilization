# Write  function to calculate e*
library(udunits2)

esat <- function(tempF) {
  tempC <- ud.convert(tempF, "fahrenheit", "celsius")
  esat <- 6.1094 * exp((17.625*tempC)/(tempC + 243.04)) # in hPa
  # return answer in kPa
  return(esat/10)
}
esat(73)


# Write function to calculate VPD from RH

vpd <- function(rh, tempF) {
  e <- rh/100*esat(tempF)
  return(esat(tempF) - e)
}

vpd(10, 100)
