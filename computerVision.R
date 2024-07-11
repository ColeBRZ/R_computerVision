# Rtools installation
if (!require("installr"))
  install.packages("installr")
library(installr)
installr::install.Rtools()

# CMake installation (may or may not be necessary)
# if (!require("installr"))
#    install.packages("installr")
# installr::install.CMake()

# First lets install devtools so we can install Rvision
if (!require(devtools))
  install.packages("devtools")
library(devtools)
library(usethis)

# ROpenCVLite installation
install.packages("ROpenCVLite")
library(ROpenCVLite)
devtools::install_github("swarm-lab/ROpenCVLite")

# installing openCV
install.packages("opencv")
library(opencv)

# installing and loading Rvision from github 
devtools::install_github("swarm-lab/Rvision")
library(Rvision)

# cameras video stream 
# 0 index is 'default camera' 
vid_stream = stream(index = 0)

# Looping over each 'nextimg' frame with a delay of .1
while(TRUE){
  nextimg = readNext(vid_stream)
  display(nextimg)
  Sys.sleep(0.1)
}

## Some opencv functions for regular video and edge detection 
## ocv_video(ocv_face)
## ocv_video(ocv_edges)

# when done
# release(vid_stream)
