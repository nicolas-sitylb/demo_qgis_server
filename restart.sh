#!/bin/bash

set -e

reset

docker compose down

docker compose --progress plain build

docker compose up -d

docker compose logs --tail 64 -tf
