FROM balenalib/raspberry-pi-python:3.9-bullseye

RUN install_packages build-essential \
    git \
    make \
    cmake \
    gcc \
    libcurl4-openssl-dev \
    libffi-dev \
    libfreetype6-dev \
    libjpeg-dev \
    libpulse-dev \
    libssl-dev \
    swig \
    zlib1g-dev

# Required for OpenCV
RUN install_packages \
    # Hierarchical Data Format
    libhdf5-dev libhdf5-serial-dev \
    # for image files
    libjpeg-dev libtiff5-dev libjasper-dev libpng-dev \
    # for video files
    libavcodec-dev libavformat-dev libswscale-dev libv4l-dev \
    # for gui
    #libqt4-test libqtgui4 libqtwebkit4 libgtk2.0-dev \
    # high def image processing
    libilmbase-dev libopenexr-dev

RUN pip install --no-cache-dir \
    azure-iot-device \
    azure-mgmt-iothub \
    numpy \
    opencv-contrib-python \
    requests \
    trollius \
    tornado==4.5.3 \
    opencv-python \
    asyncio

# sudo docker run --privileged=true --device /dev/vchiq
