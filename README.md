# Colossal Cave

Colossal Cave! In a Docker Container!

The game media for this has been sourced from [archive.org](https://archive.org/details/ColossalCave1984WillieCrowtherJerryD.PohlAdventureInteractiveFiction).

## Usage

For detailed usage, consult README.md from upstream
[classiccontainers/dosbox](https://github.com/classic-containers/dosbox) image.

### Linux

```shell
$ docker run \
    -e DISPLAY=unix$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    classiccontainers/colossal_cave
```

### Docker for Windows

This requires an X11 and Pulse Adudio server; for more information on how to
set those up, consult the README.md in the repository for the upstream image.

```shell
$ docker run \
    -e DISPLAY=host.docker.internal:0 \
    classiccontainers/colossal_cave
```
