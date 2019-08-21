library(magrittr)

# custom normalizer
normalize <- function(x){
  return ((x-min(x))/(max(x)-min(x)))
}

# create new Iris data set for analysis
iris.new <- iris[,c(1,2,3,4)]
iris.class <- iris[,"Species"]

# Normalize all
iris.new[] <- purrr::map(iris.new, normalize) %>%
  tibble::as_tibble()

# apply k-means algorithm with no. of centroids(k)=3
result <- kmeans(iris.new,3)

# Print the results
result
