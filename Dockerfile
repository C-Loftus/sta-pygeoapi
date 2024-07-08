FROM geopython/pygeoapi:latest

FROM base AS no-cache-section

COPY sta.config.yml /pygeoapi/local.config.yml

COPY templates/* /pygeoapi/pygeoapi/templates/
