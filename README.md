# README

## Build Image

```shell
$ sh build.sh
```

## Start Server

```shell
$ docker run --name sserver -p 10443:443 -dt \
    -v $(pwd)/server.json:/config.json \
    jhsea3do/shadowsocks ssserver

$ docker run --rm -it \
    jhsea3do/shadowsocks ssserver --help
```

## Start Client

```shell
$ docker run --name sslocal -p 11080:1080 -dt \
    -v $(pwd)/client.json:/config.json \
    jhsea3do/shadowsocks sslocal

$ docker run --rm -it \
    jhsea3do/shadowsocks sslocal --help
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
