FROM alpine:latest

WORKDIR /tmp

RUN apk --no-cache add ca-certificates curl jq
RUN HUGO_VERSION=$(curl -s https://api.github.com/repos/gohugoio/hugo/releases/latest | jq -r ".name" | grep -o "[0-9\.]\+" | head -1) \
    && echo "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz" \
    && curl -L "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz"  | tar -xz

FROM alpine:latest
WORKDIR /opt/
COPY --from=0 /tmp/hugo /usr/bin/hugo
CMD ["hugo"]
