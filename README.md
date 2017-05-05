# README

## Build Image

```shell
$ sh build.sh
```

## Start Server

```shell
$ docker run --name ssserver -p 10443:443 -d \
    -v $(pwd)/server.json:/config.json \
    jhsea3do/shadowsocks ssserver

$ docker run --rm -i \
    jhsea3do/shadowsocks ssserver --help
```

## Start Client

```shell
$ docker run --name sslocal -p 11080:1080 -d \
    -v $(pwd)/client.json:/config.json \
    jhsea3do/shadowsocks sslocal

$ docker run --rm -i \
    jhsea3do/shadowsocks sslocal --help
```


## Start Http Proxy via Socks5 Server (Like Polipo)

- See: https://github.com/mconintet/honey
- See: https://github.com/jhsea3do/shadowsocks/tree/honey

```shell
$ docker run --name kawarau -p 3128:8123 -dt --link sl1:sslocal \
    jhsea3do/shadowsocks:kawarau honey -la=":8123" -sa="sslocal:1080"
```

## Docker Compose

```yaml
version: '2'
services:
    default:
        tty: false
        image: shadowsocks
        network_mode: bridge
        ports: 
            - 10443:443
        volumes:
            - ./tmp/config.json:/config.json
        restart: always
        command: ssserver
```
