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
├── app
│   ├── Dockerfile
│   ├── aspnet.csproj
│   └── Program.cs
├── mysql8
│   ├── init.d
│   │   └── init.sql
│   └── Dockerfile
├── docker-compose.yaml
├── web
│   ├── conf.d
│   │   └── default.conf
│   ├── Dockerfile
│   └── nginx.conf
└── README.md
```

## Setup with docker compose

```
$ cp -p .env.example .env
$ docker compose up -d
```


After the application starts, navigate to `http://localhost:8080` in your web browser or run:
```
$ curl localhost:8080
["Blog post #0","Blog post #1","Blog post #2","Blog post #3","Blog post #4"]
```

Stop and remove the containers
```
$ docker compose down
```

## References
https://github.com/docker/awesome-compose/tree/master/nginx-aspnet-mysql
