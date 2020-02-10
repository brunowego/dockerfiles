# Db2 Exporter for Prometheus

## Running

```sh
docker run --rm \
  -p 9161:9161 \
  docker.io/brunowego/db2_exporter:latest \
    -default.metrics='/etc/db2_exporter/default-metrics.toml'
    -dsn='DSN:DATABASE=sample; HOSTNAME=localhost; PORT=50000; PROTOCOL=TCPIP; UID=db2inst1; PWD=db2inst1;' \
    -web.listen-address=':9161'
```
