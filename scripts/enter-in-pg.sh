#!/usr/bin/env bash
set -e

cd "$(dirname "$0")/../"

psql "postgres://postgres:password@127.0.0.1:5432/postgres" $@
