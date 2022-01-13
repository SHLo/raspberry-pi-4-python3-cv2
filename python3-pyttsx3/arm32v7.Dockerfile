FROM balenalib/raspberry-pi-python:3.9-bullseye

RUN install_packages alsa-utils espeak

RUN pip install pyttsx3

# sudo docker run  --device /dev/snd 
