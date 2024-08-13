x <- c(2.1, 4.2, 3.3, 5.4)

x[seq(1:3)]

x[c(3,1)]


# run this at the top
rm(list = ls())
x <- c(2.1, 4.2, 3.3, 5.4)

# use indexing to sort
x[order(x, decreasing = TRUE)]
x[c(1,1)]
x[c(2.1, 2.9)]


# negative integers to get rid of vectors
x[-1]
x[-c(3,1)]

# can't mix pos and neg indexes
x[c(-1,2)]

# create logicals
x[c(TRUE, TRUE, FALSE, FALSE)]
x[x > 3]

# R is recycling the rules (ie true false, true false)
x[c(TRUE, FALSE)]
x[c(TRUE, TRUE, NA, FALSE)]

# returns the original vector
x[]

# returns a zero length vector
x[0]

x <- 1:5
x[c(1,2)] <- 2
x[-1] <- 4:1
x

# combine logicals and NAs
x[c(TRUE, FALSE, NA)] <- 1
x

df <- data.frame(a = c(1, 10, NA))
df$a[df$a < 5] <- 0
df

mtcars
