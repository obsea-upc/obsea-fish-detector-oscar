FROM ubuntu:22.04
WORKDIR /app
ENV PATH="$PATH:/etc/profile"
COPY ./fish_detector.py /app/fish_detector.py
COPY ./requirements.txt /app/requirements.txt
COPY ./yolov8x_obsea_19sp_2538img.pt /app/yolov8x_obsea_19sp_2538img.pt


RUN apt update && \
 apt install python3 -y && \
 apt install python3-pip ffmpeg -y && \
 pip3 install -r requirements.txt

#CMD python3 ./metadata_api.py -e \
    