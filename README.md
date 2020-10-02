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

## Boat-data

1. download [marie-postgresql.gz](https://drive.google.com/file/d/1MvSa_U72yy86zrcA1Tdo7zucqYi8HBY9/view?usp=sharing) from google-drive
2. unzip `gunzip marie-postgresql.gz`
3. run `PGPASSWORD=postgres psql -h localhost -U postgres -f marie-postgresql`

## Mosquitto

Used by some iot devices (message broker)
- Publish: `scripts/mosquitto_pub -t sensor -m '{"aap":1}'`
- Listen:  `scripts/mosquitto_sub -t sensor`
