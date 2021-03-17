FROM ruby:2.5-alpine

RUN \
    apk --no-cache -t .dev add build-base git && \
    apk --no-cache add libcurl bash && \
    gem install specific_install && \
    gem specific_install -l https://github.com/theodi/csv2rdf && \
    gem install rdf-turtle && \
    apk del .dev

VOLUME /workspace
WORKDIR /workspace
