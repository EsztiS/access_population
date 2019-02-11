# Copyright (C) Jupyter Development Team
# Distributed under the terms of the Modified BSD License

FROM jupyter/datascience-notebook:83ed2c63671f

USER root
RUN apt-get update && \
    apt-get install -y gdal-bin \
                       libgdal-dev && \
    export CPLUS_INCLUDE_PATH=/usr/include/gdal && \
    export C_INCLUDE_PATH=/usr/include/gdal && \
    pip install GDAL==2.2.3
# python-gdal and GDAL must be same version
# need to first figure out version needed with
# gdal-config --version after installing libgdal-dev

# Set Working Directory
WORKDIR /home/jovyan

# Modules
COPY requirements.txt /home/jovyan/requirements.txt
RUN pip install --upgrade pip && \
    pip install -r /home/jovyan/requirements.txt

USER $NB_USER

# Expose the notebook port
EXPOSE 8888

# Start the notebook server
CMD jupyter notebook --no-browser --port 8888 --ip=0.0.0.0
