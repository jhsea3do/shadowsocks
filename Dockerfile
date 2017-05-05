FROM alpine

ADD https://raw.githubusercontent.com/jhsea3do/shadowsocks/honey/honey /bin/honey
RUN chmod +x /bin/honey

CMD [ '/bin/honey' ]
