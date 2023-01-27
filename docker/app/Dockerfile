# syntax=docker/dockerfile:1.4

FROM --platform=$BUILDPLATFORM mcr.microsoft.com/dotnet/sdk:7.0-alpine AS base
WORKDIR /app


RUN dotnet tool install -g Microsoft.dotnet-httprepl

RUN echo 'export PATH="$HOME/.dotnet/tools:$PATH"' >> ~/.profile


