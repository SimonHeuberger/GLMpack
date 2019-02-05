
# Open the respective R file that loads a source file
# Set the working directory so that it works (different in every .R file)
# Run all the code JM wrote
# Copy the code below at the end of the respective R file and run it

filee <- "dp_pack.data"              # change "dp_pack.data" name according to the original source name + "_pack" + extension

write.table(dp.97, file = filee)     # change "dp.97" to whatever JM have it in this file; change saving function depending on format

new.folder <- "/Users/simonheuberger/Google Drive/Amerika/spring 2019/michelle/GLMpack"   # where the R package is
file.copy(filee, new.folder)         # copy saved data file
file.remove(filee)                   # delete saved data file from folder "GLM_2ndEd"

setwd("/Users/simonheuberger/Google Drive/Amerika/spring 2019/michelle/GLMpack")    # set wd so that we're in the package folder
dp <- read.table(filee,header=T)     # read in saved data file; change loading function depending on format; change name to original name
library(devtools)
devtools::use_data(dp)               # turn saved data file in .rda that's automatically saved in /data
file.remove(filee)                   # delete saved data file from package folder

# CRUCIAL: DO NOT SAVE AND OVERWRITE JM'S R FILE - I WANT THE CODE TO BE ALL THEIRS, WITHOUT MY LOADING MODIFICATIONS


