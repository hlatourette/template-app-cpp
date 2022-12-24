# template-app-cpp
Template C/C++ application

## Build
```
docker build [--target builder] -t templateappcpp .
```

## Test

### Unit
```
docker build [--target builder] -t templateappcpp .
```

### Integration
```
docker build [--target tester] -t templateappcpp .
docker run -it --rm templateappcpp
> ./tests/integration/templateapp.i.t
```

## Run
```
docker run -it --rm templateappcpp
> cd /usr/bin
> ./templateapp.sh
> ./templateapp
```
