# unsafe rsyncd module for current directory
minimal
```sh
docker run --rm -p 873:873 -v ./syncme:/data ghcr.io/mchangrh/drsync
```
if having issues with permissions (runs as current user)
```sh
docker run --rm -user $UID:$GID -p 873:873 -v ./syncme:/data ghcr.io/mchangrh/drsync
```

inspired by [ehannes/docker-rsyncd](https://github.com/ehannes/docker-rsyncd) - recommended if you want any customization