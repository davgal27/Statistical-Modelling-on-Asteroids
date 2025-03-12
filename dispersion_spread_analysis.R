# Basic summary statistics for mass, year, latitude (reclat), and longitude (reclong)
summary(meteorite_dataset$mass)   
summary(meteorite_dataset$year)   
summary(meteorite_dataset$reclat) 
summary(meteorite_dataset$reclong)

# Calculate IQR (Interquartile Range)
iqr_mass <- IQR(meteorite_dataset$mass, na.rm = TRUE)
iqr_year <- IQR(meteorite_dataset$year, na.rm = TRUE)
iqr_reclat <- IQR(meteorite_dataset$reclat, na.rm = TRUE)
iqr_reclong <- IQR(meteorite_dataset$reclong, na.rm = TRUE)

# Calculate Range
range_mass <- range(meteorite_dataset$mass, na.rm = TRUE)
range_year <- range(meteorite_dataset$year, na.rm = TRUE)
range_reclat <- range(meteorite_dataset$reclat, na.rm = TRUE)
range_reclong <- range(meteorite_dataset$reclong, na.rm = TRUE)

# Display Results as a Data Frame (With IQR Included)
dispersion_summary <- data.frame(
  Variable = c("Mass", "Year", "Reclat", "Reclong"),
  Range = c(diff(range_mass), diff(range_year), diff(range_reclat), diff(range_reclong)),
  Q1 = c(quantile(meteorite_dataset$mass, 0.25, na.rm = TRUE),
         quantile(meteorite_dataset$year, 0.25, na.rm = TRUE),
         quantile(meteorite_dataset$reclat, 0.25, na.rm = TRUE),
         quantile(meteorite_dataset$reclong, 0.25, na.rm = TRUE)),
  Median = c(median(meteorite_dataset$mass, na.rm = TRUE),
             median(meteorite_dataset$year, na.rm = TRUE),
             median(meteorite_dataset$reclat, na.rm = TRUE),
             median(meteorite_dataset$reclong, na.rm = TRUE)),
  Q3 = c(quantile(meteorite_dataset$mass, 0.75, na.rm = TRUE),
         quantile(meteorite_dataset$year, 0.75, na.rm = TRUE),
         quantile(meteorite_dataset$reclat, 0.75, na.rm = TRUE),
         quantile(meteorite_dataset$reclong, 0.75, na.rm = TRUE)),
  IQR = c(iqr_mass, iqr_year, iqr_reclat, iqr_reclong)  # Include IQR
)

# Print the results
print(dispersion_summary)