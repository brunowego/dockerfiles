# IBM 3270

## Running

```sh
docker run -it --rm \
  --name ibm-3270 \
  brunowego/ibm-3270:latest -secure -noverifycert [server] 23
```

## Remove

```sh
docker rm -f ibm-3270
```
