#/bin/bash
docker rmi safepic/kali-light:latest
docker build -t safepic/kali-light .
