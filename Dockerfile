# syntax=docker/dockerfile:1
FROM docker.io/library/debian:bookworm-slim

RUN apt-get update && apt-get -y --no-install-recommends install curl ca-certificates

ARG VERSION=v2.40.0
RUN curl -L https://github.com/hasura/graphql-engine/raw/stable/cli/get.sh | bash

CMD ["hasura", "metadata", "apply"]
