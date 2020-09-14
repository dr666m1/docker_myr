FROM r-base:4.0.2

COPY ./entrypoint.sh /

COPY ./init.R /

RUN apt update && \
    apt install -y  mecab mecab-ipadic-utf8 fonts-ipafont libmecab-dev && \
    apt install -y  libcurl4-openssl-dev libssl-dev libxml2-dev && \
    apt install -y  libgmp3-dev && \
    Rscript /init.R

ENTRYPOINT ["/entrypoint.sh"]
