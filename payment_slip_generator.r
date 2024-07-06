# Load required library
library(dplyr)

# Step 1: Define Worker Class (using list in R)
create_worker <- function(id, name, gender, salary) {
  return(list(id = id, name = name, gender = gender, salary = salary, level = NA))
}

# Step 2: Generate Worker List
set.seed(123)
workers <- list()
for (i in 1:400) {
  name <- paste("Worker", i, sep = "_")
  gender <- sample(c("Male", "Female"), 1)
  salary <- sample(5000:30000, 1)
  workers[[i]] <- create_worker(i, name, gender, salary)
}

# Step 3: Generate Payment Slips and Step 4: Implement Conditional Statements
for (i in 1:400) {
  worker <- workers[[i]]
  tryCatch({
    if (worker$salary > 10000 & worker$salary < 20000) {
      worker$level <- "A1"
    }
    if (worker$salary > 7500 & worker$salary < 30000 & worker$gender == "Female") {
      worker$level <- "A5-F"
    }
    
    # Output the payment slip
    print(paste("ID:", worker$id, ", Name:", worker$name, ", Gender:", worker$gender, ", Salary: $", worker$salary, ", Level:", worker$level))
  }, error = function(e) {
    print(paste("Error processing worker", worker$id, ":", e$message))
  })
}