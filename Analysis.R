data <- read.csv("/Users/mithesh/Downloads/Starbucks survey processed data.csv")

correlation_result <- cor.test(data$Distance.in.Miles, data$Self.Reported.Loyalty)

correlation_result


data$Inferred.Loyalty <- ifelse(data$Inferred.Loyalty == "Loyal", 1, 0)
logistic_model <- glm(Inferred.Loyalty ~ Distance.in.Miles, data = data, family = binomial)

summary(logistic_model)
