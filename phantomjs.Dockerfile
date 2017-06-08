FROM ubuntu:16.10

RUN apt-get update \
    && apt-get install -y libfontconfig1 wget bzip2 \
    && cd /usr/local/share \
    && wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 \
    && tar xvjf phantomjs-2.1.1-linux-x86_64.tar.bz2 \
    && ln -sf /usr/local/share/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin

COPY src/*.js /usr/local/analyzer/
WORKDIR /usr/local/analyzer
