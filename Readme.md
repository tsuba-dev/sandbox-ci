# Whirlpool Forge

Build environment for Whirlpool suite.  
Use docker images for automation repeatability and Continuous Integration.

## Build components

### Thali

```bash
docker-compose up build-thali
```

### Whirlpool Client

```bash
docker-compose up build-whirlpool-client
```

### Whirlpool Client CLI

```bash
docker-compose up build-whirlpool-client-cli
```

## Makefile

- Use `make` to build all submodules
- Use `make clean` to cleanup build
- Use `make rebuild` to have a fresh build
- Use `make build-thali` to build only `com.msopentech.thali`
- Use `make build-whirlpool-client-cli` to build cli while developing
