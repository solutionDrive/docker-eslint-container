FROM node:10-alpine

RUN apk --no-cache add bash &&\
    export npm_config_cache=$(mktemp -d)  &&\
    npm install -g eslint  &&\
    rm -rf $npm_config_cache

COPY rootfs /

ENTRYPOINT ["/usr/local/bin/entrypoint"]
CMD ["run_plugin"]
