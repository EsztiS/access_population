# Nigeria - population and grid power

This project estimates the number of Nigerians that don't have access to grid power. The following datasets are used:

** [Nigerian Energy grid data](https://energydata.info/dataset/nigeria-high-resolution-high-voltage-grid-map-based-machine-learning) from the World Bank

** [Nigerian population estimate](https://www.worldpop.org/geodata/summary?id=95) data from Worldpop or alternatively, [Nigerian population estimate​](https://www.ciesin.columbia.edu/data/hrsl/) data from Columbia University’s Earth Institute. NB browser pop-ups must be enabled.

### Setup

To use the provided Dockerfile, install [Docker Desktop](https://www.docker.com/products/docker-desktop). I have only tested on a Mac (mojave 10.14.1) with docker desktop 2.0.0.2 (30215).

Build the image and run the container with the below commands. <image name> and <path/to/local/directory> should be customized by you. The -t gives the image a tag name you can remember, -p is the port you will connect through (jupyter by default uses 8888) and -v is the volume you are mounting, so that changes you make in the container are simultaneously local.

`docker build -t <image name> .`
`docker run -p8888:8888 -v <path/to/local/directory>:/home/jovyan/ <image name>`

If successful, navigate to localhost:8888 in your favorite browser. To shut down, find the container ID and kill.
`docker ps`
`docker kill <container id>`


