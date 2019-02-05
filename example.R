# Example R file
# Masterclass statistics - February 2019 - Niels van Berkel

participant <- c('1','2','3','4','5','6','7')
height <- c(120, 186, 184, 176, 156, 177, 186)
country <- c('USA','USA','Australia','Australia','Australia','Australia','Germany')

participant_data <- data.frame(participant, height, country)
str(participant_data)

# Default dataset
str(sleep)

plot(extra ~ group, data = sleep)
t.test(extra ~ group, data = sleep)
# Effect size:
cohensD(extra ~ group, data = sleep)
# Could not find function!
install.packages("lsr")
library("lsr")
cohensD(extra ~ group, data = sleep)


# Default dataset
str(mtcars)

anova_results <- aov(mpg ~ as.factor(cyl), data = mtcars)
summary(anova_results)
TukeyHSD(anova_results, ordered = TRUE)
