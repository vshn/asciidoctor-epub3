FROM asciidoctor/docker-asciidoctor:1.40.0

COPY theme /theme
COPY fonts /theme/fonts
COPY plantuml.config /plantuml.config
COPY generate-vshn-epub3.sh /usr/local/bin/generate-vshn-epub3

ENTRYPOINT [ "generate-vshn-epub3" ]
