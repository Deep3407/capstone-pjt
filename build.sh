#!/bin/bash
docker build -t capstone .
docker stop capstone-container
docker run -d -it -p 80:80 capstone
