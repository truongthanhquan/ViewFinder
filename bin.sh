#!/bin/bash

username=$(whoami)
trap 'sudo kill $BGPID; exit' SIGINT 

pulseaudio -k
pulseaudio --start

username=$(whoami)
cd parec-server
node -r esm index.js 8003 &
BGPID=$!
cd ..
node index.js 5005 8005 xxxcookie $username token2
