# template-app-cpp
Template C++ application

## Build

### Builder
```
docker build --target builder -t templateappcpp .
```

### Full
```
docker build -t templateappcpp .
```

## Test

### Unit
```
docker build --target builder -t templateappcpp .
```

### Integration
```
docker build --target tester -t templateappcpp .
docker run -it --rm templateappcpp
```

In container
```
./tests/integration/integrationtest.tsk
```

## Run
```
docker run -it --rm templateappcpp
```

In container
```
cd /usr/bin
./templateapp.sh
./templateapp.tsk
```
