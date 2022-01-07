FROM balenalib/raspberry-pi-python:3.9-stretch

ENV READTHEDOCS=True

RUN install_packages build-essential \
    python3-picamera \
    git \
    make \
    gcc \
    libcurl4-openssl-dev \
    libffi-dev \
    libfreetype6-dev \
    libjpeg-dev \
    libpulse-dev \
    libssl-dev \
    swig \
    zlib1g-dev

RUN pip install --no-cache-dir \
    azure-iot-device \
    flask==0.12.3 \
    luma.oled \
    RPi.bme280 \
    smbus

RUN pip uninstall -y RPi.GPIO

#sudo docker run --privileged=true -v /opt/vc:/opt/vc --env LD_LIBRARY_PATH=/opt/vc/lib --device /dev/vchiq
