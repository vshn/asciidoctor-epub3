FROM asciidoctor/docker-asciidoctor

RUN apk add --no-cache \
    build-base \
    libxml2-dev \
    ruby-dev \
    && gem update --no-document \
    && gem install --no-document asciimath asciidoctor-mathematical asciidoctor-diagram

COPY theme /theme
COPY fonts /theme/fonts
COPY plantuml.config /plantuml.config
COPY generate-vshn-epub3.sh /usr/local/bin/generate-vshn-epub3

ENTRYPOINT [ "generate-vshn-epub3" ]
