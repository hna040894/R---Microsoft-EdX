# movies is already pre-loaded

# Display the structure of movies
str(movies)

# Plot the genre variable of movies
plot(movies$genre)

# Plot the genre variable against the rating variable
plot(movies$genre, movies$rating)

# Plot the runtime variable of movies
plot(movies$runtime)

# Plot rating (x) against runtime (y)
plot(movies$rating, movies$runtime)

# Create a histogram for rating
hist(movies$rating)

# Create a histogram for rating, with 20 bins
hist(movies$rating, breaks = 20)

# Create a boxplot of the runtime variable
boxplot(movies$runtime)

# Subset the dateframe and plot it entirely
plot(movies[,c("rating", "votes", "runtime")])

# Create a pie chart of the table of counts of the genres
pie(table(movies$genre))

# Subset salaries: salaries_educ

salaries_educ <- salaries[salaries$degree == 3,]
# Create a histogram of the salary column
hist(salaries_educ$salary, breaks = 10)


# Create a customized plot
     plot(movies$votes, movies$runtime,
          main = "Votes versus Runtime",
          xlab = "Number of votes [-]",
          ylab = "Runtime [s]",
          sub = "No clear correlation",
          col = "#dd2d2d",
          col.main = 604,
          pch = 9)
     
# Customize the plot further
 plot(movies$votes, movies$year,
          main = "Are recent movies voted more on?",
          xlab = "Number of votes [-]",
          ylab = "Year [-]",
          col = "orange",
          pch = 19,
          cex.axis = 0.8)

 # Build a customized histogram
 hist(movies$runtime, 
      breaks = 20,
      xlim = c(90, 220),
      main = "Distribution of Runtime",
      xlab = "Runtime [-]",
      col = "cyan",
      border = "red")
 
 # Add the exp vector as a column experience to salaries
 
 salaries$experience <- exp
 # Filter salaries: only keep degree == 3: salaries_educ
 salaries_educ <- salaries[salaries$degree == 3,]
 
 # Create plot with many customizations
 plot(salaries_educ$experience, salaries_educ$salary,
      main = "Does experience matter?",
      xlab = "Work experience",
      ylab = "Salary",
      col = "blue",
      col.main = "red",
      cex.axis = 1.20)
 
 # List all the graphical parameters
 par()
 
 # Specify the mfrow parameter
 par(mfrow = c(2,1))
 
 # Build two plots
 plot(movies$votes, movies$rating)
 hist(movies$votes)
 
 
 # Build the grid matrix
 grid <- matrix(c(1, 2, 3 ,3), nrow = 2)
 
 # Specify the layout
 layout(grid)
 
 # Build three plots
 plot(movies$rating, movies$runtime)
 plot(movies$votes, movies$runtime)
 boxplot(movies$runtime)
 
 # Specify the layout
 layout(grid)
 
 # Customize the three plots
 plot(movies$rating, movies$runtime,
      xlab = "Rating",
      ylab = "Runtime",
      pch = 4,
      col = "orange")
 plot(movies$votes, movies$runtime,
      xlab = "Number of Votes",
      ylab = "Runtime",
      col = "blue",
      pch = 2)
 boxplot(movies$runtime,
         border = "darkgray",
         main = "Boxplot of Runtime",
         col.main = "black")
 
 # Fit a linear regression: movies_lm
 movies_lm <- lm(movies$rating ~ movies$votes)
 
 # Build a scatterplot: rating versus votes
 plot(movies$votes, movies$rating)
 
 # Add straight line to scatterplot
 abline(coef(movies_lm))
 
 # Fit a linear regression (don't change)
 movies_lm <- lm(movies$rating ~ movies$votes)
 
 # Customize scatterplot
 plot(movies$votes, movies$rating,
      main = "Analysis of IMDb data",
      xlab = "Number of Votes",
      ylab = "Rating",
      col = "darkorange", pch = 15, cex = 0.7)
 
 # Customize straight line
 abline(coef(movies_lm), lwd = 2, col = "red")
 
 # Add text
 xco <- 7e5
 yco <- 7
 text(xco, yco, label = "More votes? Higher rating!")
