# syntax=docker/dockerfile:1.4

FROM --platform=$BUILDPLATFORM mcr.microsoft.com/dotnet/sdk:7.0-alpine
WORKDIR /app

## TODO: should check version
## https://libraries.io/nuget/Microsoft.dotnet-httprepl
RUN dotnet tool install -g Microsoft.dotnet-httprepl --version 7.0.0-preview.22601.1
RUN dotnet tool install -g dotnet-ef --version 7.0.2
RUN dotnet tool install -g dotnet-aspnet-codegenerator --version 7.0.2

RUN echo 'export PATH="$HOME/.dotnet/tools:$PATH"' >> ~/.profile


