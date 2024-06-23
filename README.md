# Docker image with pg_search extension

In this repository I have successfully tried to install the PostgreSQL extension [pg_search](https://github.com/paradedb/paradedb/tree/dev/pg_search#overview) in the `postgres:16` Docker image.

```sh
$ docker compose build
$ docker compose up -d
$ ./scripts/enter-in-pg.sh
psql (16.1, serveur 16.3 (Debian 16.3-1.pgdg120+1))
Saisissez « help » pour l'aide.

postgres=# CREATE EXTENSION IF NOT EXISTS pg_search CASCADE;
CREATE EXTENSION
postgres=# SHOW shared_preload_libraries;
 shared_preload_libraries
--------------------------
 pg_search
(1 ligne)
```

Next, follow [ParadeDB Quickstart](https://docs.paradedb.com/search/full-text/index#creating-a-bm25-index).
