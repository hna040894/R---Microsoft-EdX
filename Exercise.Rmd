# # Star Wars box office in millions (!) 
# Construct matrix 
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col_titles <- c("US","non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles))
ticket_prices_matrix <- matrix(c(5, 5, 6, 6, 7, 7), nrow=3, byrow = TRUE, dimnames = list(movie_names,col_titles))

# Estimated number of visitors
visitors <- star_wars_matrix / ticket_prices_matrix

# Average number of US visitors
## To select first column [,1]
average_us_visitors <- mean(visitors[ ,1])

# Average number of non-US visitors
average_non_us_visitors <- mean(visitors[ ,2])

# Calculate the money that remains after subtracting the commission: remaining
remaining <- star_wars_matrix - (star_wars_matrix * commission_rates)

# Calculate income per film: remaining_tot
remaining_tot <- rowSums(remaing)

# Calculate profit

profit <- remaining_tot - budget

