FROM golang:alpine

ADD https://busybox.net/downloads/binaries/ssl_helper-x86_64 /bin/ssl_helper
RUN chmod +x /bin/ssl_helper

RUN mkdir -p /go/src/github.com/mconintet \
    && wget -O /tmp/clicolor-master.zip https://github.com/mconintet/clicolor/archive/master.zip \
    && wget -O /tmp/honey-master.zip https://github.com/mconintet/honey/archive/master.zip \
    && unzip -d /tmp /tmp/clicolor-master.zip \
    && unzip -d /tmp /tmp/honey-master.zip \
    && mv /tmp/clicolor-master /go/src/github.com/mconintet/clicolor \
    && mv /tmp/honey-master /go/src/github.com/mconintet/honey \
    && cd /go/src/github.com/mconintet/honey && sh build.sh && mv out/honey /bin/honey \
    && cd /go && rm -rf /go/src/github.com /tmp/*.zip

CMD [ '/bin/honey' ]
