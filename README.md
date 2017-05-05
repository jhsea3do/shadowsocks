# README

## Thanks

- https://github.com/mconintet/honey
- https://github.com/mconintet/clicolor

## Build Image

```shell
$ sh build.sh
```

## Get Binary

```shell
$ docker run -d --name kawarau jhsea3do/shadowsocks:kawarau /bin/honey -la=":8123" -sa="localhost:1080"
```
