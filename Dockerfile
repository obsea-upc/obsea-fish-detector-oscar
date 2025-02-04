FROM ubuntu:22.04
WORKDIR /app
COPY ./fish_detector.py /app/fish_detector.py
COPY ./requirements.txt /app/requirements.txt


RUN apt update && \
  apt install python3 python3-pip ffmpeg wget -y && \
  wget https://github.com/obsea-upc/obsea-fish-detector-oscar/releases/download/model_v2/yolov11x_24sp_5527img.pt -O /app/yolov11x_24sp_5527img.pt && \
  pip3 install -r requirements.txt

