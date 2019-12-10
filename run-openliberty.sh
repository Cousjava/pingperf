#!/bin/sh
sudo docker run -ti --rm -p 8080:8080 --network host pingperf-openliberty
