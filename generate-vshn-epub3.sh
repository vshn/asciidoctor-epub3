#!/bin/bash

asciidoctor --backend=epub3 \
    --require=asciidoctor-epub3 \
    --require=asciidoctor-mathematical \
    --require=asciidoctor-kroki \
    --attribute epub3-stylesdir=/theme \
    --attribute doctype=book \
    --attribute mathematical-format=svg \
    --attribute mathematical-inline=true \
    --attribute kroki-server-url=https://vshn-kroki.apps.cloudscale-lpg-2.appuio.cloud \
    --attribute kroki-fetch-diagram=true \
    --attribute kroki-default-options=inline \
    --attribute kroki-plantuml-include=/plantuml.config \
    --attribute kroki-plantuml-include-paths=/ \
    --attribute stem=latexmath \
    --attribute hide-uri-scheme \
    --attribute experimental \
    --attribute source-highlighter=rouge \
    --attribute pygments-style=bw \
    --attribute icons=font \
    --attribute icon-set=fi \
    --attribute numbered \
    --attribute toc \
    --attribute toclevels=2 \
    --attribute sectnumlevels=2 "$@"
