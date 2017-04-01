FROM node:6-alpine

RUN npm install -g shadowsocks

COPY entrypoint.sh .

ENV SS_ADDR "0.0.0.0"
ENV SS_PORT 443
ENV SS_METH "aes-256-cfb"
ENV SS_PASS "fUck9fw!"

EXPOSE 443

ENTRYPOINT ["sh", "entrypoint.sh"]
