FROM geopython/pygeoapi:latest

ARG CACHEBUST
RUN echo "$CACHEBUST"

COPY sta.config.yml /pygeoapi/local.config.yml

COPY templates/* /pygeoapi/pygeoapi/templates/
