FROM r-base:4.0.0

COPY ./entrypoint.sh /

COPY ./init.R /

RUN apt update && \
    apt install -y  mecab mecab-ipadic mecab-ipadic-utf8 fonts-ipafont libmecab-dev curl && \
    Rscript /init.R && \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
