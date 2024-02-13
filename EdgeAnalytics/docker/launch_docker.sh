#!/usr/bin/env bash
docker run -it \
    -v $HOME/ppaiot/EdgeAnalytics:/code \
    mont43/rpi-buster-tf2.0:1.1
