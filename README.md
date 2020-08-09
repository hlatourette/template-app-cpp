# template-application

Template C++ application

## Build

### builder
```
docker build --target builder -t myapp .
```

### full
```
docker build -t templateapp .
```

## Run
```
docker run -it --rm --name templateapp templateapp
```
