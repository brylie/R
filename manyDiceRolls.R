# Simulate rolling of dice
# Perform analysis to see patterns in randomness
# Adapted from Jonathan Stray lecture
# https://www.youtube.com/watch?v=3NuyRKNkBQg

rollNDice <- function(numberOfDice) {
  # Roll a number of dice
  # return summed dice rolls
  
  # Initialize rolls counter
  rolls <- 0
  
  for (i in 1:numberOfDice) {
    roll <- sample(1:6,1)
    rolls <- rolls + roll
  }
  return(rolls)
}
manyrolls <- function(numberOfRolls,numberOfDice) {
  # Roll a number of dice a number of times
  par(mfrow = c(3,3))
  
  # Use this to set the minimum histogram display value
  # Not currently in use
  minHist = numberOfRolls
  
  # Maximum number that the histogram will display
  # i.e. if all rolls are six
  maxHist = (numberOfDice * 6) + 1
  for (i in 1:9) {
    hist(replicate(numberOfRolls,rollNDice(numberOfDice))
         ,breaks=seq(1:maxHist)
         ,right=FALSE
         ,xlab=NULL
         ,ylab=NULL
         ,main=NULL)
  }
  par(mfrow = c(1,1))
}