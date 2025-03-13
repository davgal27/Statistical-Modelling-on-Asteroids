# Calculate IQR (Interquartile Range)
iqr_mass <- IQR(meteorite_dataset$mass)
iqr_year <- IQR(meteorite_dataset$year)
iqr_reclat <- IQR(meteorite_dataset$reclat)
iqr_reclong <- IQR(meteorite_dataset$reclong)

# Calculate Range
range_mass <- range(meteorite_dataset$mass)
range_year <- range(meteorite_dataset$year)
range_reclat <- range(meteorite_dataset$reclat)
range_reclong <- range(meteorite_dataset$reclong)

# Display Results as a Data Frame (With IQR Included)
dispersion_summary <- data.frame(
  Variable = c("Mass", "Year", "Reclat", "Reclong"),
  Range = c(diff(range_mass), diff(range_year), diff(range_reclat), diff(range_reclong)),
  Q1 = c(quantile(meteorite_dataset$mass, 0.25),
         quantile(meteorite_dataset$year, 0.25),
         quantile(meteorite_dataset$reclat, 0.25),
         quantile(meteorite_dataset$reclong, 0.25)),
  Median = c(median(meteorite_dataset$mass),
             median(meteorite_dataset$year),
             median(meteorite_dataset$reclat),
             median(meteorite_dataset$reclong)),
  Q3 = c(quantile(meteorite_dataset$mass, 0.75),
         quantile(meteorite_dataset$year, 0.75),
         quantile(meteorite_dataset$reclat, 0.75),
         quantile(meteorite_dataset$reclong, 0.75)),
  IQR = c(iqr_mass, iqr_year, iqr_reclat, iqr_reclong)  # Include IQR
)

# Print the results
print(dispersion_summary)
