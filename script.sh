#!/bin/bash

wget -nc https://download.samplelib.com/mp4/sample-5s.mp4

docker build -t icaoberg/ffmpeg:4.4.2 .
docker run -it --rm -v $(pwd):/data icaoberg/ffmpeg:4.4.2 ffmpeg -i /data/sample-5s.mp4 -c:v copy -c:a copy /data/sample-5s.mkv
