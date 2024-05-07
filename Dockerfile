FROM ubuntu:22.04
WORKDIR /app
COPY ./fish_detector.py /app/fish_detector.py
COPY ./requirements.txt /app/requirements.txt


RUN apt update && \
  apt install python3 python3-pip ffmpeg wget -y && \
  wget https://github.com/obsea-upc/obsea-fish-detector-oscar/releases/download/model_v1/yolov8x_obsea_19sp_2538img.pt -O /app/yolov8x_obsea_19sp_2538img.pt && \
  pip3 install -r requirements.txt

