FROM amazoncorretto:18.01-alpine3.15@sha256:52679264dee28c1cbe2ff8455efc86cc44cbceb6f94d9971abd7cd7e4c8bdc50

WORKDIR /opt/minecraft-forge

RUN set -eu && \
    addgroup -g "10001" -S "minecraft" && \
    adduser -S -D -u "10001" -G "minecraft" -h "$(pwd)" --gecos "" -s "/bin/sh" minecraft && \
    apk add --no-cache tini

USER minecraft

COPY src/. .

EXPOSE 25565

ENTRYPOINT [ "/sbin/tini", "--" ]

CMD [ "/bin/sh", "run.sh" ]