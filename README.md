# README

## Build Image

```shell
$ sh build.sh
```

## Start Server

```shell
$ docker run --name sserver -p 10443:443 -dt \
    -v $(pwd)/server.json:/config.json \
    jhsea3do/shadowsocks:alpine sserver
```

## Start Client

```shell
$ docker run --name sslocal -p 11080:1080 -dt \
    -v $(pwd)/client.json:/config.json \
    jhsea3do/shadowsocks:alpine sslocal
```
