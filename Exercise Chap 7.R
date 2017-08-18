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

# movies is pre-loaded in your workspace

# Create a customized plot
     plot(movies$votes, movies$runtime,
          main = "Votes versus Runtime",
          xlab = "Number of votes [-]",
          ylab = "Runtime [s]",
          sub = "No clear correlation",
          col = "#dd2d2d",
          col.main = 604,
          pch = 9)
# movies is pre-loaded in your workspace
     
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