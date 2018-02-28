#!/bin/bash
raspivid -o - -t 0 -w 640 -h 360 -fps 60 -b 250000 | cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8554/stream}' :demux=h264
# raspivid -o - -t 0 -w 1280 -h 720 -fps 10 -b 250000 | cvlc -vvv stream:///dev/stdin --sout '#rtp{access=udp,sdp=rtsp://:8554/stream}' :demux=h264
