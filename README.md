## Compose .Net application with Docker

| Middleware | version |
| ------------- | ------------- |
| nginx  | 1.23.3  |
| .Net  | 7.0  |
| MySQL  | 8.0  |


### ASP.NET server with an Nginx proxy and a MySQL database
Project structure:
```
.
├── docker
│   ├── app
│   │   ├── Dockerfile
│   │   ├── aspnet.csproj
│   │   └── Program.cs
│   ├── mysql8
│   │   ├── init.d
│   │   │   └── init.sql
│   │   └── Dockerfile
│   ├── web
│   │   ├── conf.d
│   │   │   └── default.conf
│   │   ├── Dockerfile
│   │   └── nginx.conf
├── src // .Net app repository
├── .env.example
├── docker-compose.yaml
├── Makefile
└── README.md
```

## Setup with docker compose

```
$ cp -p .env.example .env
$ make up

# Case for creating a webapi project
# https://learn.microsoft.com/en-us/training/modules/build-web-api-aspnet-core/
# Init webapi project - dotnet new webapi
$ make dotnet/init/webapi
```

## Start .Net app server

```
$ make dotnet/run

# hot reload
$ make dotnet/watch
```

After the application starts, navigate to `http://localhost:8080` in your web browser or run:
```
$ curl http://localhost:8180/weatherforecast
[{"date":"2023-01-22","temperatureC":11,"temperatureF":51,"summary":"Scorching"},{"date":"2023-01-23","temperatureC":-10,"temperatureF":15,"summary":"Balmy"},{"date":"2023-01-24","temperatureC":22,"temperatureF":71,"summary":"Chilly"},{"date":"2023-01-25","temperatureC":-5,"temperatureF":24,"summary":"Cool"},{"date":"2023-01-26","temperatureC":45,"temperatureF":112,"summary":"Scorching"}]
```

Stop and remove the containers
```
$ make stop
or 
$ make down
```

## References
- https://github.com/docker/awesome-compose/tree/master/nginx-aspnet-mysql
- https://learn.microsoft.com/en-us/training/modules/build-web-api-aspnet-core/
