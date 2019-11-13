FROM asciidoctor/docker-asciidoctor

COPY theme /theme
COPY generate-vshn-epub3.sh /usr/local/bin/generate-vshn-epub3

ENTRYPOINT [ "generate-vshn-epub3" ]
