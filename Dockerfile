FROM microsoft/dotnet:2.1-sdk-alpine

RUN apk update \
 && apk add zip unzip bash jq git openssh python py-pip \
 && rm -rf /var/cache/apk/* \
 && pip install awscli

RUN dotnet tool install -g Amazon.Lambda.Tools

ENV PATH /root/.dotnet/tools:$PATH