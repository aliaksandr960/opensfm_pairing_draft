FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

# Install apt-getable dependencies
RUN apt-get update \
    && apt-get install -y \
        build-essential \
        cmake \
        git \
        libeigen3-dev \
        libopencv-dev \
        libceres-dev \
        python3-dev \
        python3-numpy \
        python3-opencv \
        python3-pip \
        python3-pyproj \
        python3-scipy \
        python3-yaml \
        curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip install cloudpickle==0.4.0 && \
    pip install exifread==2.1.2 && \
    pip install flask==2.3.2 && \
    pip install fpdf2==2.4.6 && \
    pip install joblib==0.14.1 && \
    pip install matplotlib && \
    pip install networkx==2.5 && \
    pip install numpy==1.21 && \
    pip install Pillow>=8.1.1 && \
    pip install pyproj>=1.9.5.1 && \
    pip install pytest==3.0.7 && \
    pip install python-dateutil>=2.7 && \
    pip install pyyaml==5.4 && \
    pip install scipy>=1.10.0 && \
    pip install Sphinx==4.2.0 && \
    pip install six && \
    pip install xmltodict==0.10.2 && \
    pip install wheel && \
    pip install opencv-python
