#!/bin/bash 

docker run --rm -it -p 4000:4000 -v "$PWD":/app -w /app etelej/jekyll

