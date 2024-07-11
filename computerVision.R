# Rtools installation
if (!require("installr"))
  install.packages("installr")
library(installr)
installr::install.Rtools()

# CMake installation (may or may not be necessary, read README)
# if (!require("installr"))
#    install.packages("installr")
# installr::install.CMake()

# devtools installation alongside usethis
if (!require(devtools))
  install.packages("devtools")
library(devtools)
library(usethis)

# ROpenCVLite installation
install.packages("ROpenCVLite")
library(ROpenCVLite)

# opencv installation 
install.packages("opencv")
library(opencv)

# Rvision installation from github
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

# when done end program execution or...
# release(vid_stream)
