FROM ubuntu:latest

# ignore dialogue
ENV DEBIAN_FRONTEND=noninteractive

# upgrade env
RUN apt update
#RUN apt upgrade -y

# install python3 and pip
RUN apt install python3 -y
RUN apt install python3-pip -y
RUN apt install python3-dev -y
RUN pip3 install --upgrade pip

# for aiortc
# https://github.com/aiortc/aiortc#requirements
RUN apt install libavdevice-dev -y
RUN apt install libavfilter-dev -y
RUN apt install libopus-dev -y
RUN apt install libvpx-dev -y
RUN apt install pkg-config -y
# not listed but needed...
RUN apt install libopencv-dev -y
RUN apt install libffi-dev -y
RUN apt install libsrtp2-dev -y
#RUN apt-add-repository ppa:jonathonf/ffmpeg-4 -y
#RUN apt upgrade -y
run apt install libgl1-mesa-glx -y

# for example app
# https://github.com/aiortc/aiortc/tree/master/examples/server#running
RUN pip install aiortc


RUN pip install aiohttp

RUN pip install --upgrade pip setuptools wheel
RUN pip install scikit-build
RUN pip install cmake

RUN pip install opencv-python 
#RUN pip install opencv-contrib-python-headless

EXPOSE 8080
COPY ./src /workspace
WORKDIR /workspace

CMD python3 ./server.py
