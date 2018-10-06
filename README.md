# boilerplate for a dockerized node app with pm2 & docker-compose

## pm2

pm is run in watch mode and will restart on file changes

### logs

```bash
docker exec -it CONTAINER_NAME pm2 logs
```

### monitoring

```bash
docker exec -it CONTAINER_NAME pm2 monit
```

## docker-compose

start with rebuild

```bash

docker-compose up -d --build api
```

start

```bash

docker-compose up -d

```
