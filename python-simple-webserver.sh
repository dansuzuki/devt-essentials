#!/bin/bash

PORT=8200
cd $YOUR_WEB_DIRECTORY
nohup python -m SimpleHTTPServer $PORT >./logs.txt 2>&1 &
exit 0
