# Create a character vector
dogs <- c("teddy", "khora", "waffle", "banjo")
typeof(dogs)
class(dogs)

# numeric vector, can be a double or a float
weights <- c(50, 55, 25, 35)
typeof(weights)
class(weights)

# integer
dog_age <- c(5L, 6L, 1L, 7L)
typeof(dog_age)
class(dog_age)
is.numeric(dog_age)

# what if we combine classes?
dog_info <- c("teddy", 50, 5L)
dog_info
typeof(dog_info)
# turns it all into a character vector because r needs everything to be the same type of data
is.character(dog_info)

# named elements; this is called indexing
dog_food <- c(teddy = "purina",
              khora = "alpo",
              waffle = "fancy feast",
              banjo = "blue diamond")
dog_food[2]
dog_food["khora"]

cars <- c("red", "orange", "white", "blue", "silver", "black")
cars[5]
cars[2:4]

# for loops
i <- 3
cars[i]

i <- seq(1:3)
cars[i]

cars[3] <- "BURRITOS!"
cars

# Matrices!
fish_size <- matrix(c(0.8, 1.2, 0.4, 0.9), ncol = 2, nrow = 2, byrow = FALSE)
typeof(fish_size)
class(fish_size)

# combine different types of data into our matrix
dog_walk <- matrix(c("teddy", 5, "khora", 10), ncol = 2, nrow = 2, byrow = FALSE)
dog_walk
class(dog_walk)
typeof(dog_walk)

# accessing pieces of matrices
whale_travel <- matrix(data = c(31.8, 1348, 46.9, 1587), ncol = 2, nrow = 2, byrow = FALSE)
whale_travel
whale_travel[1,2] <- 0
whale_travel[2,]
# position in matrix as if populated by column, don't do this
whale_travel[3]

# Lists, allow a greater degree of flexibility and good for storing mismatched information. output to stat model are often stored as lists
urchins <- list("blue", c(1, 2, 3), c("a cat", "a dog"), 5L)
urchins[1]
# to pull out the info, use double brackets
urchins[[1]]

tacos <- list(topping = c("onion", "cilantro", "guacamole"), filling = c("beans", "meat", "veggie"), price = c(6.75, 8.25, 9.50))
tacos

tacos[[2]]
tacos$filling

# data frames, want to keep both vectors the same length, and elements within each vector the same type
fruit <- data.frame(type = c("apple", "banana", "peach"),
                    mass = c(130, 195, 150))
fruit
class(fruit)
fruit[1,2]
fruit[3,1]
fruit[2,1] <- "pineapple"
fruit
fruit$type
fruit$mass

dogs <- data.frame(name = c("teddy", "khora", "waffle", "waffle"),
                   age = c(1, 2, 3, 4))

dogs[dogs$name == "waffle",]$age
dogs[dogs$name == "waffle" & dogs$age == 3,]
dogs[3,]

