# Simulate rolling of dice
# Perform analysis to see patterns in randomness
# Adapted from Jonathan Stray lecture
# https://www.youtube.com/watch?v=3NuyRKNkBQg

roll <- function() {
  sample(1:6,1)
}
manyrolls <- function(n) {
  par(mfrow = c(3,3))
  for (i in 1:9) {
    hist(replicate(n,dieroll())
         ,breaks=seq(1:7)
         ,right=FALSE
         ,xlab=NULL
         ,ylab=NULL
         ,main=NULL)
  }
  par(mfrow = c(1,1))
}