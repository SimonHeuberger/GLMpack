
# Open the respective R file that loads a source file
# Set the working directory so that it works (different in every .R file)
# Run all the code JM wrote
# Copy the code below at the end of the respective R file and run it -- adjust names accordingly

scotvote <- scotland.df                   # name current R object like originally loaded source
setwd("/Users/simonheuberger/Google Drive/Amerika/spring 2019/michelle/GLMpack")    # set wd so that we're in the package folder
usethis::use_data(scotvote)               # create .rda with name of originally loaded source

# CRUCIAL: DO NOT SAVE AND OVERWRITE JM'S R FILE - I WANT THE CODE TO BE ALL THEIRS, WITHOUT MY LOADING MODIFICATIONS


