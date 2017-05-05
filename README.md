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
$ docker run -d --name honey jhsea3do/shadowsocks:honey /bin/honey -la=":8123" -sa="localhost:1080"
$ docker cp honey:/bin/honey .
$ docker stop honey && docker rm honey
```
