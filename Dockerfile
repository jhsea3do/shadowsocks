FROM node:6-alpine

RUN npm install -g shadowsocks

COPY entrypoint.sh .

COPY config.json .

EXPOSE 443

ENTRYPOINT ["sh", "entrypoint.sh"]
