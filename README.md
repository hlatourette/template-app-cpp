# template-application
Template C++ application

## Build

### Builder
```
docker build --target builder -t templateapp .
```

### Full
```
docker build -t templateapp .
```

## Test

### Unit
```
docker build --target builder -t templateapp .
```

### Integration
```
docker build --target tester -t templateapp .
docker run -it --rm --name templateapp templateapp
```

In container
```
./tests/integration/integrationtest.tsk
```

## Run
```
docker run -it --rm --name templateapp templateapp
```

In container
```
cd /usr/bin
./templateapp.sh
./templateapp.tsk
```
