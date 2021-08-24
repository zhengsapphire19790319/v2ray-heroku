FROM alpine:latest

ADD configure.sh /opt/configurezs.sh

RUN apk add --no-cache --virtual .build-deps ca-certificates curl \
 && chmod +x /opt/configurezs.sh

ENTRYPOINT ["sh", "-c", "/opt/configurezs.sh"]
