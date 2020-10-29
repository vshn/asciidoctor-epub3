#!/bin/bash

asciidoctor --backend=epub3 \
    --require=asciidoctor-epub3 \
    --require=asciidoctor-mathematical \
    --require=asciidoctor-diagram \
    --attribute epub3-stylesdir=/theme \
    --attribute doctype=book \
    --attribute mathematical-format=svg \
    --attribute mathematical-inline=true \
    --attribute plantuml-config=/plantuml.config \
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
