FROM asciidoctor/docker-asciidoctor

RUN apk add --no-cache --virtual .rubymakedepends \
    build-base \
    libxml2-dev \
    ruby-dev \
    && gem install --no-document asciimath \
    && gem install --no-document asciidoctor-mathematical \
    && gem update --no-document \
    && apk del -r --no-cache .rubymakedepends

COPY theme /theme
COPY generate-vshn-epub3.sh /usr/local/bin/generate-vshn-epub3

ENTRYPOINT [ "generate-vshn-epub3" ]
