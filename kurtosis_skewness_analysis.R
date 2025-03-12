# Load required package
library(e1071)

# Compute and print skewness
print("Skewness Results:")
print(skewness(meteorite_dataset$mass, na.rm = TRUE))
print(skewness(meteorite_dataset$year, na.rm = TRUE))
print(skewness(meteorite_dataset$reclat, na.rm = TRUE))
print(skewness(meteorite_dataset$reclong, na.rm = TRUE))

# Compute and print kurtosis
print("Kurtosis Results:")
print(kurtosis(meteorite_dataset$mass, na.rm = TRUE))
print(kurtosis(meteorite_dataset$year, na.rm = TRUE))
print(kurtosis(meteorite_dataset$reclat, na.rm = TRUE))
print(kurtosis(meteorite_dataset$reclong, na.rm = TRUE))