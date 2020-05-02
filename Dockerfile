FROM r-base:3.6.3

COPY ./entrypoint.sh /

COPY ./init.R /

RUN apt update && \
    apt install -y  mecab mecab-ipadic mecab-ipadic-utf8 fonts-ipafont libmecab-dev&& \
    Rscript /init.R && \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
