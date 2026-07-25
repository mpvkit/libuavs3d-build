# libuavs3d-build

build scripts for [uavs3d](https://github.com/uavs3/uavs3d)

> This is a component of the [MPVKit](https://github.com/mpvkit/MPVKit) project.

## Installation

### Swift Package Manager

Not work on macCatalyst platform

```
https://github.com/mpvkit/libuavs3d-build.git
```

## How to build

```bash
make build
# specified platforms (ios,macos,tvos,tvsimulator,isimulator,maccatalyst,xros,xrsimulator)
make build platform=ios,macos
# build GPL version
make build enable-gpl
# clean all build temp files and cache
make clean
# see help
make help
```
