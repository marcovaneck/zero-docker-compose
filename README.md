# zero-docker-compose

## Run
- Start: `docker-compose up -d`
- Stop:  `docker-compose down`

## Info

Port | Container                              | local-link
---  | ---                                    | ---
8080 | nginx                                  | [connect](http://127.0.0.1:8080/index.html)
8888 |                                        | *Post json to fluentd*
3000 | grafana   (admin:asdfasdf)             | [connect](http://127.0.0.1:3000/)
9090 | prometheus                             | [connect](http://127.0.0.1:9090/)
9201 | promscale                              | *PostgreSQL to prometheus as remote-storage*
5432 |                                        | *PostgreSQL with timescale* `./psql-docker.sh`
9187 | postgresql_exporter                    | *PostgreSQL to prometheus*
1883 | mosquitto                              | *MQTT broker*
