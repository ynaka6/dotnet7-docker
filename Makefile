up:
	mkdir -p ./src
	docker-compose up -d

stop:
	docker-compose stop

down:
	docker-compose down

ash/app:
	docker exec -it dotnet7-docker-app ash


dotnet/init/webapi:
	docker exec -it dotnet7-docker-app dotnet new webapi -f net7.0
	docker exec -it dotnet7-docker-app sed -i "s/\"\*\"/\"\*\",\r\n  \"Urls\": \"http\:\/\/\+\:8000\"/g" appsettings.json 

dotnet:
	docker exec -it dotnet7-docker-app dotnet 

dotnet/run:
	docker exec -it dotnet7-docker-app dotnet run

dotnet/watch:
	docker exec -it dotnet7-docker-app dotnet watch

