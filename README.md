# bd-netdisk-docker
A baidu netdisk client docker based on ubuntu-desktop-lxde-vnc


## install

1. download the dockerfile

2. build
```
docker build -t bdnetdisk-linux .
```

3. run

```
docker run -d -p 6080:80 --name bdnetdisk -v /dev/shm:/dev/shm -v /root/you_want_to_share:/root/Desktop bdnetdisk-linux
```

You can access the desktop with access 127.0.0.1:6080

## bugs

If the baidu netdisk would get stuck when log in for sometime, just rm it and start a new container.

## more options about vnc

see more https://github.com/fcwu/docker-ubuntu-vnc-desktop
