FROM postgres:16

RUN apt-get update -y \
    && apt install -y curl

ARG PG_VERSION_MAJOR=16
ARG PG_SEARCH_VERSION=0.7.6

ENV PG_BM25_VERSION=${PG_BM25_VERSION}
RUN curl -fsSL https://github.com/paradedb/paradedb/releases/download/v${PG_SEARCH_VERSION}/pg_search-v${PG_SEARCH_VERSION}-debian-12-amd64-pg${PG_VERSION_MAJOR}.deb -o /tmp/pg_search.deb
RUN dpkg -i /tmp/pg_search.deb
RUN rm /tmp/pg_search.deb

RUN echo "shared_preload_libraries='pg_search'" >> /usr/share/postgresql/postgresql.conf.sample
