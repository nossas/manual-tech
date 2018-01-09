FROM golang:1.9.2-alpine3.7

ENV HUGO_VERSION 0.32.2
ENV HUGO_BINARY hugo_${HUGO_VERSION}_linux-64bit
ENV PATH=/usr/local/hugo:${PATH}

RUN set -x \
      && apk upgrade --update \
      && apk add --update ca-certificates bash curl wget git \
      && rm -rf /var/cache/apk/* \
      && mkdir /usr/local/hugo \
      && wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY}.tar.gz -O /usr/local/hugo/${HUGO_BINARY}.tar.gz \
      && tar xzf /usr/local/hugo/${HUGO_BINARY}.tar.gz -C /usr/local/hugo/ \
      && rm /usr/local/hugo/${HUGO_BINARY}.tar.gz \
      && rm -rf /tmp/* /var/cache/apk/*

RUN mkdir /usr/share/blog
WORKDIR /usr/share/blog

EXPOSE 1313

COPY . /usr/share/blog
RUN hugo -d /usr/share/nginx/html/

ENV HUGO_BASE_URL http://localhost:1313
CMD [ "hugo", "server", "-b", "${HUGO_BASE_URL}", "--bind=0.0.0.0" ]
