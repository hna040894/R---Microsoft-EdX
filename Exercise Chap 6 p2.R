# planets_df is pre-loaded
str(planets_df)
# The type of Mars: mars_type
mars_type <- planets_df[4,2]

# Entire rotation column: rotation
rotation <- planets_df[,"rotation"]

# First three planets: closest_planets_df
closest_planets_df <- planets_df[1:3, ]

# Last three planets: furthest_planets_df
furthest_planets_df <- planets_df[6:8, ]

# planets_df is pre-loaded
str(planets_df)
# Diameter and rotation for Earth: earth_data 
earth_data <- planets_df[3, c("diameter", "rotation")]

# Diameter for the last six rows: furthest_planets_diameter
furthest_planets_diameter <- planets_df[3:8, "diameter"]

# Print furthest_planets_diameter
furthest_planets_diameter

# Create rings_vector
rings_vector <- planets_df$has_rings

# Print rings_vector
rings_vector

# Select the information on planets with rings: planets_with_rings_df
planets_with_rings_df <- planets_df[rings_vector, TRUE]
planets_with_rings_df

# Planets that are smaller than planet Earth: small_planets_df
small_planets_df <- planets_df[planets_df$diameter < 1,]
# Planets that rotate slower than planet Earth: slow_planets_df
slow_planets_df <- subset(planets_df, subset = abs(rotation) >1)

# Definition of moons and masses
moons <- c(0, 0, 1, 2, 67, 62, 27, 14)
masses <- c(0.06, 0.82, 1.00, 0.11, 317.8, 95.2, 14.6, 17.2)

# Add moons to planets_df under the name "moon"
planets_df$moon <- moons

# Add masses to planets_df under the name "mass"
planets_df$mass <- masses

# Name pluto correctly
pluto <- data.frame(name = "Pluto", type = "Terrestrial planet", diameter = 0.18,rotation = -6.38, has_rings = FALSE)

# Bind planets_df and pluto together: planets_df_ext
planets_df_ext <- rbind(planets_df, pluto)

# Print out planets_df_ext
planets_df_ext

# Create a desired ordering for planets_df: positions

positions <- order(planets_df$diameter, decreasing = TRUE)

# Create a new, ordered data frame: largest_first_df
largest_first_df <- planets_df[positions,]

# Print largest_first_df
largest_first_df

# Remove economic variables and add population
countries_df_dem <- countries_df[, c(1,2,5)]
countries_df_dem$population <- population

# Add brazil
names(brazil) <- c("name", "continent", "has_president", "population")
countries_df2 <- rbind(countries_df_dem,brazil)

# Sort by population
countries_df2[order(countries_df2$population,decreasing=TRUE), ]