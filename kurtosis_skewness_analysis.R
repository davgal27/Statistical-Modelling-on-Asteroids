# Load required package
library(e1071)

# Compute and print skewness
print("Skewness Results:")
print(skewness(meteorite_dataset$mass))
print(skewness(meteorite_dataset$year))
print(skewness(meteorite_dataset$reclat))
print(skewness(meteorite_dataset$reclong))

# Compute and print kurtosis
print("Kurtosis Results:")
print(kurtosis(meteorite_dataset$mass))
print(kurtosis(meteorite_dataset$year))
print(kurtosis(meteorite_dataset$reclat))
print(kurtosis(meteorite_dataset$reclong))
