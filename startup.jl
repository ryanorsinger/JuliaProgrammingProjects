println("Welcome to Julia, Julian!")

arithmetic_mean(x) = sum(x) / length(x)

# Arithmetic Mean
avg(x) = (ones(length(x))'x) / length(x) 

# Norm of a vector
norm(x) = sqrt(x'x)

# Standard Deviation
std(x) = norm(x .- avg(x)) / sqrt(length(x))

# Quadratic Mean
rms(x) = sqrt(avg(x)^2 + std(x)^2) 

# Distance function
distance(x, y) = norm(x - y)
