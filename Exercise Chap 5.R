# Numeric vector: 1 up to 10
my_vector <- 1:10 

# Numeric matrix: 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# Factor of sizes
my_factor <- factor(c("M","S","L","L","M"), ordered = TRUE, levels = c("S","M","L"))

# Construct my_list with these different elements
my_list <- list(my_vector, my_matrix, my_factor)

# Construct my_super_list with the four data structures above
my_super_list <- list(my_vector, my_matrix, my_factor, my_list)

# Display structure of my_super_list
str(my_super_list)

# Numeric vector: 1 up to 10
my_vector <- 1:10 

# Numeric matrix: 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# Factor of sizes
my_factor <- factor(c("M","S","L","L","M"), ordered = TRUE, levels = c("S","M","L"))

# Construct my_list with these different elements
my_list <- list(my_vector, my_matrix, my_factor)
names(my_list) <- c("vec", "mat", "fac")
# Print my_list to the console
my_list

# Create actors and reviews
actors_vector <- c("Jack Nicholson","Shelley Duvall","Danny Lloyd","Scatman Crothers","Barry Nelson")
reviews_factor <- factor(c("Good", "OK", "Good", "Perfect", "Bad", "Perfect", "Good"), 
                         ordered = TRUE, levels = c("Bad", "OK", "Good", "Perfect"))

# Create shining_list
shining_list <- list(title = "The Shining", actors = actors_vector, reviews = reviews_factor)


# shining_list is already defined in the workspace

# Actors from shining_list: act
act <- shining_list[["actors"]]

# List containing title and reviews from shining_list: sublist
sublist <- shining_list[c("title", "reviews")]

# Display structure of sublist
str(sublist)

# Select the last actor: last_actor
last_actor <- shining_list$actors[length(shining_list$actors)]

# Select the second review: second_review
second_review <- shining_list$reviews[2]

# Add the release year to shining_list
shining_list$year <- 1980

# Add the director to shining_list
shining_list$director <- "Stanley Kubrick"

# Inspect the structure of shining_list
str(shining_list)

# Add both the year and director to shining_list: shining_list_ext
shining_list_ext <- c(shining_list,
                      list(year = 1980,
                           director = "Stanley Kubrick"))

# Have a look at the structure of shining_list_ext
str(shining_list_ext)

# Create the list key_skills
key_skills <- list(skills$topics[2], skills$context[2], skills$list_info[[2]] [4])