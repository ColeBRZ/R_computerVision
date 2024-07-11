# R_computerVision
This a repository of some computer vision related R programs using Rvision and openCV.

If your R version starts with 4.0 or 4.1, you will need to install Rtools40.
If your R version starts with 4.2, you will need to install Rtools42.
If your R version starts with 4.3 or 4.4 (devel), you will need to install Rtools43

After Rtools is installed, make sure it is able to be found in your environment variables. Go to
'System Properties' -> 'Environment Variables' -> 'System Variables' -> and if you have the latest version,
it will look like this...

Variable               Value

RTOOLS43_HOME          C:\rtools43

Installing Cmake is only required if your R version starts with 4.0 or 4.1 and, 
therefore, you have installed Rtools40. For newer versions of R, Cmake is included in Rtools42 and Rtools43
