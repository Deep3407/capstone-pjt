#!/bin/bash
docker build -t capstone .
docker run -d -it -p 80:80 capstone
