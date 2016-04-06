Zoom Docker
===========

This was created to facilitate running docker within a supported OS userspace.
It does not abstract any of the kernel, drivers, or the home directories from
the Zoom application. This was created in hopes to isolate some variables with
application crashes in the Beta version Ubuntu 16.04, by limiting changes to
the kernel space.

Building
========

 - From the top level directory of this repo run: `docker build .`

Usage
=====

To use this application, you will need to have a working Docker installation.
To run the application you will need to build the Docker image, then run:
`./zoom.sh <my-docker-image-id>`

This will lauch the application as a foreground application.
