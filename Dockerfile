FROM ubuntu:18.04

RUN apt-get update && apt-get -y upgrade 


WORKDIR /SOFT/

#Samtools
RUN wget https://github.com/samtools/samtools/releases/download/1.9/samtools-1.9.tar.bz2 && \
    tar jxf samtools-1.9.tar.bz2 && \
    rm samtools-1.9.tar.bz2 && \
    cd samtools-1.9 && \
    ./configure --prefix $(pwd) && \
    make