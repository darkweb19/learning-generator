FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python-is-python3 \
    python3-pip \
    git
RUN pip3 install PyYAML --break-system-packages

COPY feed.py /urs/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]